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

-- Dumping structure for table convocatoria.administracion
CREATE TABLE IF NOT EXISTS `administracion` (
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `administracion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL DEFAULT '',
  `contraseña` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`administracion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Dumping data for table convocatoria.administracion: ~3 rows (approximately)
/*!40000 ALTER TABLE `administracion` DISABLE KEYS */;
INSERT INTO `administracion` (`nombre`, `apellidos`, `administracion`, `contraseña`) VALUES
	('Willian', 'Toreez', 'admi', '123'),
	('nAHUEL', 'LKLKL', 'ADMINISTRACION', '123'),
	('sdf', 'dfsdf', 'dfsdf', 'sdf');
/*!40000 ALTER TABLE `administracion` ENABLE KEYS */;

-- Dumping structure for table convocatoria.autoridad
CREATE TABLE IF NOT EXISTS `autoridad` (
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `autoridad` varchar(50) COLLATE utf8_spanish2_ci NOT NULL DEFAULT '',
  `contraseña` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`autoridad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Dumping data for table convocatoria.autoridad: ~0 rows (approximately)
/*!40000 ALTER TABLE `autoridad` DISABLE KEYS */;
INSERT INTO `autoridad` (`nombre`, `apellidos`, `autoridad`, `contraseña`) VALUES
	('Mauri', 'Apaza', 'auto', '123');
/*!40000 ALTER TABLE `autoridad` ENABLE KEYS */;

-- Dumping structure for table convocatoria.calificacion_conocimientos_labo
CREATE TABLE IF NOT EXISTS `calificacion_conocimientos_labo` (
  `Item` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `adm_linux` double DEFAULT NULL,
  `redes_nivel_intermedio` double DEFAULT NULL,
  `Mysql` double DEFAULT NULL,
  `programacion_internet` double DEFAULT NULL,
  `aplicaciones_web` double DEFAULT NULL,
  `electronica_teorico` double DEFAULT NULL,
  `hardware_software` double DEFAULT NULL,
  `electronica_practico` double DEFAULT NULL,
  `didactica` double DEFAULT NULL,
  `cod_SIS_conocimientos` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Nro_identificacion_con_pì` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Nro_identificacion_con_pì`),
  KEY `FK_calificaion_conocimientos_pi` (`cod_SIS_conocimientos`),
  CONSTRAINT `FK_calificaion_conocimientos_pi` FOREIGN KEY (`cod_SIS_conocimientos`) REFERENCES `estudiante` (`codigo_SIS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Dumping data for table convocatoria.calificacion_conocimientos_labo: ~2 rows (approximately)
/*!40000 ALTER TABLE `calificacion_conocimientos_labo` DISABLE KEYS */;
INSERT INTO `calificacion_conocimientos_labo` (`Item`, `adm_linux`, `redes_nivel_intermedio`, `Mysql`, `programacion_internet`, `aplicaciones_web`, `electronica_teorico`, `hardware_software`, `electronica_practico`, `didactica`, `cod_SIS_conocimientos`, `Nro_identificacion_con_pì`) VALUES
	('8', 25, 23.75, 20, 0, 0, 0, 0, 0, 0, '202001049', 80),
	('2', 10, 0, 0, 0, 20, 0, 0, 0, 0, '202001034', 81),
	('3', 0, 0, 15, 0, 0, 0, 0, 0, 0, '202001036', 82);
/*!40000 ALTER TABLE `calificacion_conocimientos_labo` ENABLE KEYS */;

-- Dumping structure for table convocatoria.calificacion_conocimientos_piza
CREATE TABLE IF NOT EXISTS `calificacion_conocimientos_piza` (
  `Item` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `examen_escrito` int(11) DEFAULT NULL,
  `examen_oral` int(11) DEFAULT NULL,
  `cod_SIS_conocimientos` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Nro_identificacion_con_pì` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Nro_identificacion_con_pì`) USING BTREE,
  KEY `FK_calificaion_conocimientos_pi` (`cod_SIS_conocimientos`) USING BTREE,
  CONSTRAINT `calificacion_conocimientos_piza_ibfk_1` FOREIGN KEY (`cod_SIS_conocimientos`) REFERENCES `estudiante` (`codigo_SIS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table convocatoria.calificacion_conocimientos_piza: ~3 rows (approximately)
/*!40000 ALTER TABLE `calificacion_conocimientos_piza` DISABLE KEYS */;
INSERT INTO `calificacion_conocimientos_piza` (`Item`, `examen_escrito`, `examen_oral`, `cod_SIS_conocimientos`, `Nro_identificacion_con_pì`) VALUES
	('2', 34, 53, '202001027', 66),
	('2', 22, 52, '202001050', 67),
	('1', 38, 58, '202001028', 68);
/*!40000 ALTER TABLE `calificacion_conocimientos_piza` ENABLE KEYS */;

-- Dumping structure for table convocatoria.calificacion_meritos_labo
CREATE TABLE IF NOT EXISTS `calificacion_meritos_labo` (
  `Item` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `prom_aprobacion` int(11) DEFAULT NULL,
  `prom_general` int(11) DEFAULT NULL,
  `auxiliar_laboratorio` int(11) DEFAULT NULL,
  `auxiliar_practicas` int(11) DEFAULT NULL,
  `auxiliar_otros` int(11) DEFAULT NULL,
  `cursos_participacion` double DEFAULT NULL,
  `experiencia_operador` int(11) DEFAULT NULL,
  `certificacion_capacitacion` int(11) DEFAULT NULL,
  `cod_SIS_mer` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Nro_identificacion_meri_pi` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Nro_identificacion_meri_pi`) USING BTREE,
  KEY `FK_calificacion_meritos_pi` (`cod_SIS_mer`) USING BTREE,
  CONSTRAINT `calificacion_meritos_labo_ibfk_1` FOREIGN KEY (`cod_SIS_mer`) REFERENCES `estudiante` (`codigo_SIS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table convocatoria.calificacion_meritos_labo: ~4 rows (approximately)
/*!40000 ALTER TABLE `calificacion_meritos_labo` DISABLE KEYS */;
INSERT INTO `calificacion_meritos_labo` (`Item`, `prom_aprobacion`, `prom_general`, `auxiliar_laboratorio`, `auxiliar_practicas`, `auxiliar_otros`, `cursos_participacion`, `experiencia_operador`, `certificacion_capacitacion`, `cod_SIS_mer`, `Nro_identificacion_meri_pi`) VALUES
	('8', 12, 19, 7, 1, 1, 2.5, 2, 3, '202001049', 42),
	('2', 10, 12, 2, 1, 1, 2.5, 2, 3, '202001034', 43),
	('3', 12, 14, 10, 1, 1, 2.5, 0, 3, '202001036', 44),
	('6', 10, 15, 6, 1, 1, 2.5, 2, 3, '202001042', 45);
/*!40000 ALTER TABLE `calificacion_meritos_labo` ENABLE KEYS */;

-- Dumping structure for table convocatoria.calificacion_meritos_pi
CREATE TABLE IF NOT EXISTS `calificacion_meritos_pi` (
  `Item` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `prom_aprobacion` int(11) DEFAULT NULL,
  `prom_general` int(11) DEFAULT NULL,
  `auxiliar_docente` int(11) DEFAULT NULL,
  `auxiliar_otros` int(11) DEFAULT NULL,
  `cursos_participacion` int(11) DEFAULT NULL,
  `experiencia_operador` int(11) DEFAULT NULL,
  `cod_SIS_mer` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `experiencia_docente` int(11) DEFAULT NULL,
  `Nro_identificacion_meri_pi` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Nro_identificacion_meri_pi`),
  KEY `FK_calificacion_meritos_pi` (`cod_SIS_mer`),
  CONSTRAINT `FK_calificacion_meritos_pi` FOREIGN KEY (`cod_SIS_mer`) REFERENCES `estudiante` (`codigo_SIS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Dumping data for table convocatoria.calificacion_meritos_pi: ~8 rows (approximately)
/*!40000 ALTER TABLE `calificacion_meritos_pi` DISABLE KEYS */;
INSERT INTO `calificacion_meritos_pi` (`Item`, `prom_aprobacion`, `prom_general`, `auxiliar_docente`, `auxiliar_otros`, `cursos_participacion`, `experiencia_operador`, `cod_SIS_mer`, `experiencia_docente`, `Nro_identificacion_meri_pi`) VALUES
	('2', 20, 18, 11, 2, 2, 2, '202001027', 2, 40),
	('3', 10, 12, 9, 2, 5, 1, '202001030', 1, 41),
	('3', 0, 0, 6, 2, 2, 1, '202001033', 1, 42),
	('2', 12, 18, 12, 2, 5, 5, '202001050', 5, 43),
	('4', 12, 13, 6, 5, 5, 1, '202001032', 1, 44),
	('1', 10, 12, 3, 2, 5, 1, '202001028', 1, 45),
	('1', 20, 20, 15, 0, 0, 0, '202001052', 0, 46),
	('1', 20, 20, 15, 0, 0, 0, '202001051', 0, 47);
/*!40000 ALTER TABLE `calificacion_meritos_pi` ENABLE KEYS */;

-- Dumping structure for table convocatoria.documentos_laboratorio
CREATE TABLE IF NOT EXISTS `documentos_laboratorio` (
  `Item_doc` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `solicitud` bit(1) DEFAULT NULL,
  `certificado_de_condicion` bit(1) DEFAULT NULL,
  `certificado_de_rendimiento` bit(1) DEFAULT NULL,
  `certificado_sin_titulo` bit(1) DEFAULT NULL,
  `carnet_identidad` bit(1) DEFAULT NULL,
  `certificado_biblioteca` bit(1) DEFAULT NULL,
  `resumen_CV` bit(1) DEFAULT NULL,
  `respaldo_CV` bit(1) DEFAULT NULL,
  `kardex` bit(1) DEFAULT NULL,
  `cod_SIS_doc` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `aprobado_labo_doc` bit(1) DEFAULT NULL,
  `Nro_identificacion_docu_labo` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Nro_identificacion_docu_labo`),
  KEY `FK_documentos_laboratorio` (`cod_SIS_doc`),
  CONSTRAINT `FK_documentos_laboratorio` FOREIGN KEY (`cod_SIS_doc`) REFERENCES `estudiante` (`codigo_SIS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table convocatoria.documentos_laboratorio: ~4 rows (approximately)
/*!40000 ALTER TABLE `documentos_laboratorio` DISABLE KEYS */;
INSERT INTO `documentos_laboratorio` (`Item_doc`, `solicitud`, `certificado_de_condicion`, `certificado_de_rendimiento`, `certificado_sin_titulo`, `carnet_identidad`, `certificado_biblioteca`, `resumen_CV`, `respaldo_CV`, `kardex`, `cod_SIS_doc`, `aprobado_labo_doc`, `Nro_identificacion_docu_labo`) VALUES
	('8', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '202001049', b'1', 61),
	('2', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '202001034', b'1', 62),
	('3', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '202001036', b'1', 63),
	('6', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '202001042', b'1', 64);
/*!40000 ALTER TABLE `documentos_laboratorio` ENABLE KEYS */;

-- Dumping structure for table convocatoria.documentos_pizarra
CREATE TABLE IF NOT EXISTS `documentos_pizarra` (
  `Item_doc` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `solicitud` bit(1) DEFAULT NULL,
  `kardex` bit(1) DEFAULT NULL,
  `certificado_de_condicion` bit(1) DEFAULT NULL,
  `certificado_de_rendimiento` bit(1) DEFAULT NULL,
  `certificado_sin_titulo` bit(1) DEFAULT NULL,
  `carnet_identidad` bit(1) DEFAULT NULL,
  `certificado_biblioteca` bit(1) DEFAULT NULL,
  `resumen_CV` bit(1) DEFAULT NULL,
  `respaldo_CV` bit(1) DEFAULT NULL,
  `cod_SIS_doc` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `aprobado_piza_doc` bit(1) DEFAULT NULL,
  `Nro_identificacion_docu_piza` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Nro_identificacion_docu_piza`),
  KEY `FK_documentos_pizarra` (`cod_SIS_doc`),
  CONSTRAINT `FK_documentos_pizarra` FOREIGN KEY (`cod_SIS_doc`) REFERENCES `estudiante` (`codigo_SIS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Dumping data for table convocatoria.documentos_pizarra: ~9 rows (approximately)
/*!40000 ALTER TABLE `documentos_pizarra` DISABLE KEYS */;
INSERT INTO `documentos_pizarra` (`Item_doc`, `solicitud`, `kardex`, `certificado_de_condicion`, `certificado_de_rendimiento`, `certificado_sin_titulo`, `carnet_identidad`, `certificado_biblioteca`, `resumen_CV`, `respaldo_CV`, `cod_SIS_doc`, `aprobado_piza_doc`, `Nro_identificacion_docu_piza`) VALUES
	('2', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '202001027', b'1', 34),
	('3', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '202001030', b'1', 35),
	('3', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '202001033', b'1', 36),
	('2', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '202001050', b'1', 37),
	('4', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '202001032', b'1', 38),
	('1', b'1', b'1', b'0', b'1', b'1', b'1', b'1', b'1', b'1', '202001029', b'0', 39),
	('1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '202001028', b'1', 40),
	('1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '202001052', b'1', 41),
	('1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '202001051', b'1', 42),
	('3', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'0', '202001026', b'0', 43);
/*!40000 ALTER TABLE `documentos_pizarra` ENABLE KEYS */;

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

-- Dumping data for table convocatoria.estudiante: ~93 rows (approximately)
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` (`codigo_SIS`, `nombre`, `apellidos`, `direccion`, `telefono`, `correo_Institucional`, `contraseña`) VALUES
	('202001000', 'Alejandra ', 'Rodriguez Lia', 'a', '6464151', '201902500@est.edu.umss', '123'),
	('202001001', 'Alberto', 'Medina Eylen', 'ad', '1515', '201902500@est.edu.umss', '123'),
	('202001002', 'Bernardo', 'Perez Luke', 'ad', '123141324', '201902500@est.edu.umss', '123'),
	('202001003', 'Cesar ', 'Grageda MOrales ', 'ad', '2131242', '201902500@est.edu.umss', '123'),
	('202001004', 'Bequi', 'Arias VEla', 'ad', '5165132', '201902500@est.edu.umss', '123'),
	('202001005', 'Ariel ', 'Mejia Luna', 'ad', '0265126512', '201902500@est.edu.umss', '123'),
	('202001006', 'Daniel ', 'Cosio POlo', 'dad', '15415610', '201902500@est.edu.umss', '123'),
	('202001007', 'Dennis', 'Medrano Quispe', 'ad', '15154151', '201902500@est.edu.umss', '123'),
	('202001008', 'Emerson', 'Vilca Mamani', 'asd', '026561152', '201902500@est.edu.umss', '123'),
	('202001009', 'Andy', 'Mamani Luna', 'asd', '16541603', '201902500@est.edu.umss', '123'),
	('202001010', 'Boris', 'Quispe NIna', 'utygyu', '9845965156', '201902500@est.edu.umss', '123'),
	('202001011', 'Anuel', ' Luka Luna', 'asd', '21652', '201902500@est.edu.umss', '123'),
	('202001012', 'Ana ', 'Vila Mamano', 'sdf', '6494156', '201902500@est.edu.umss', '123'),
	('202001013', 'Belinda', 'Araujo Luna', 'ad', '53435', '201902500@est.edu.umss', '123'),
	('202001014', 'Benito', 'Mendes Luna', 'ad', '4654678', '201902500@est.edu.umss', '123'),
	('202001015', 'Carla', 'Soria Quispe', 'ad', '78686', '201902500@est.edu.umss', '123'),
	('202001016', 'Connor', ' Polo GUzman', 'ad', '435435', '201902500@est.edu.umss', '123'),
	('202001017', 'Angel', 'Cosio Luna', 'ad', '1131313', '201902500@est.edu.umss', '123'),
	('202001018', 'Ascencio', 'Genderson Luke', 'ad', '45354313', '201902500@est.edu.umss', '123'),
	('202001019', 'Aron', 'Vilca MOrales', 'ad', '1313235', '201902500@est.edu.umss', '123'),
	('202001020', 'Aida', 'Soliz Luna', 'ad', '13131583', '201902500@est.edu.umss', '123'),
	('202001021', 'Dimar', 'Nina Quispe', 'ad', '132557', '201902500@est.edu.umss', '123'),
	('202001022', 'Brayan', 'Quispe Quispe', 'ad', '78668', '201902500@est.edu.umss', '123'),
	('202001023', 'Betto', 'Cabeza Luke', 'ad', '786786876', '201902500@est.edu.umss', '123'),
	('202001024', 'Erika', 'Sarmiento Guzman', 'ad', '45345378', '201902500@est.edu.umss', '123'),
	('202001025', 'Enso', 'Perez Padilla', 'ad', '786786', '201902500@est.edu.umss', '123'),
	('202001026', 'Fabiana', 'Padilla castro', 'Linde', '7987895465', '202001026@est.edu.umss', '123 '),
	('202001027', 'Felix', 'Ramoz Torrez', 'Tiqui', '54654654', '202001027@est.edu.umss', '123'),
	('202001028', 'favio', 'Morales Encinas', 'Linde', '654654', '202001028@est.edu.umss', '123'),
	('202001029', 'Gabriela', 'Mamani Vela', 'Linde', '54654', '202001029@est.edu.umss', '123'),
	('202001030', 'Gabo', 'Mamani mamani', 'Tiqui', '464654', '202001030@est.edu.umss', '123'),
	('202001031', 'Harol', 'Ta rqui  Huanca', 'Tiqui', '321654', '202001031@est.edu.umss', '123'),
	('202001032', 'Himena', 'Mamani Luna', 'Linde', '646787', '202001032@est.edu.umss', '123 '),
	('202001033', 'isac', 'Angulo Vela', 'tqui', '64654654', '202001033@est.edu.umss', '123'),
	('202001034', 'isaias', 'Martinez Eylen', 'Tiqui', '465456456', '202001034@est.edu.umss', '123'),
	('202001035', 'Joel', 'Ramiro Guzman', 'Linde', '646547', '202001035@est.edu.umss', '123'),
	('202001036', 'Jonas', 'Apaza Mamani', 'LINde', '654654756', '202001036@est.edu.umss', '123'),
	('202001037', 'Jacob', 'Morales Padilla', 'Quillacollo', '65456456', '202001037@est.edu.umss', '123'),
	('202001038', 'Jaziel', 'Apaza Torrez', 'Quilla', '654654654', '202001038@est.edu.umss', '123'),
	('202001039', 'Habril', 'Mamani Guzman', 'Quila', '4654654564', '202001039@est.edu.umss', '123'),
	('202001040', 'Jimena', 'Mercedes Uribe', 'LInde', '6456456456', '202001040@est.edu.umss', '123'),
	('202001041', 'JHoe', 'Luna Fernandez', 'PAnamericana', '5465465', '202001041@est.edu.umss', '123'),
	('202001042', 'Fancundo', 'Escalera Cordero', 'Panamericana', '6546765456', '202001042@est.edu.umss', '123'),
	('202001043', 'Fausto', 'MOntano Maldonado', 'Quilla', '645646546', '202001043@est.edu.umss', '123'),
	('202001044', 'jesse', 'Ezpinoza Cabezas', 'Quilla', '654654', '202001044@est.edu.umss', '123'),
	('202001045', 'Gaspar', 'Ezpinosa cabezas', 'Tiqui', '2514654564', '202001045@est.edu.umss', '123'),
	('202001046', 'Irma', 'mita Uribe', 'linde', '54654564', '202001046@est.edu.umss', '123'),
	('202001047', 'IRene', 'Ezpinosa Quisbert', 'POrvenir', '6456456', '202001047@est.edu.umss', '123'),
	('202001048', 'Iris', 'Andre Mita', 'Cochamba', '6465465', '202001048@est.edu.umss', '123'),
	('202001049', 'Jaldino', 'Rivero Morales', 'Oruro', '564654564', '202001049@est.edu.umss', '123'),
	('202001050', 'Jile', 'Corona Quispe', 'Molle', '54654654', '202001050@est.edu.umss', '123'),
	('202001051', 'Kevin', 'Kayo Quispe', 'zzz', '911', '202001051@est.umss.edu', '123'),
	('202001052', 'Kino', 'Lama Quispe', 'zzz', '911', '202001052@est.umss.edu', '123'),
	('202001053', 'Luan', 'Mono Ortiz', 'zzz', '911', '202001053@est.umss.edu', '123'),
	('202001054', 'Martin', 'Newton Aros', 'qwe', '125', '202001054@est.umss.edu', '123'),
	('202001055', 'Neison', 'Nigga mamani', 'Av. Blanco Galindo', '523', '202001055@est.umss.edu', '123'),
	('202001056', 'Mipa', 'Ñuelo MUnoz', 'htr', '522', '202001056@est.umss.edu', '123'),
	('202001057', 'Lupa', 'Lanca Sosa', 'twq', '783', '202001057@est.umss.edu', '123'),
	('202001058', 'Kupa', ' Luna Quispe', 'hsc', '321', '202001058@est.umss.edu', '123'),
	('202001059', 'Nestor', 'Lito mono', 'Av. Blanco Galindo', '511', '202001059@est.umss.edu', '123'),
	('202001060', 'Kila', 'Liko Quispe', 'ggs', '223', '202001060@est.umss.edu', '123'),
	('202001061', 'Luna', 'Mono Gomez', 'lli', '664', '202001061@est.umss.edu', '123'),
	('202001062', 'Luz', 'Kilah Melano', 'loo', '521', '202001062@est.umss.edu', '123'),
	('202001063', 'Kuma', 'Miuka Quispe', 'gor', '588', '202001063@est.umss.edu', '123'),
	('202001064', 'Kit', 'Teemo Quispe', 'oir', '111', '202001064@est.umss.edu', '123'),
	('202001065', 'LEila', 'Mito Lunas', 'pol', '577', '202001065@est.umss.edu', '123'),
	('202001066', 'Lida', 'Llampa Quispe', 'wld', '100', '202001066@est.umss.ediu', '123'),
	('202001067', 'Milton', 'Mana Armenda', 'ñol', '876', '202001067@est.umss.edu', '123'),
	('202001068', 'Kaja', 'Mobile Quispe', 'tyu', '229', '202001068@est.umss.edu', '123'),
	('202001069', 'Kufra', 'Lina Quispe', 'bmn', '209', '202001069@est.umss.edu', '123'),
	('202001070', 'Lola', 'Mota VEra', 'lkj', '238', '202001070@est.umss.edu', '123'),
	('202001071', 'Minsi', 'Lata Ortiz', 'bsa', '009', '202001071@est.umss.edu', '123'),
	('202001072', 'Lesa', 'Kala Luna', 'usa', '110', '202001072@est.umss.edu', '123'),
	('202001073', 'Lala', 'Manto Luna', 'aka', '821', '202001073@est.umss.edu', '123'),
	('202001074', 'Nana', 'Lopo Cordero', 'min', '669', '202001074@est.umss.edu', '123'),
	('202001075', 'Moto', 'Moto PErez', 'mot', '908', '202001075@est.umss.edu', '123'),
	('202001101', 'Yiriam', 'Ochoa Sabogal', 'Av. Bazualdo', '458930', '202001101@est.umss.edu', '123'),
	('202001102', 'Yurany', 'Cifuentes Mendez', 'Av. Oquendo', '458730', '202001102@est.umss.edu', '123'),
	('202001103', 'Yuri', 'Salazar Aristizibal', 'Av. Oquendo', '458720', '202001103@est.umss.edu', '123'),
	('202001104', 'Yolanda', 'Arcos Legarda', 'Av. Oquendo', '458620', '202001104@est.umss.edu', '123'),
	('202001105', 'Yolanda', 'Garcia Sanchez', 'Av. Oquendo', '457289', '202001105@est.umss.edu', '123'),
	('202001106', 'Yolanda', 'Polo Echeverry', 'Av. Oquendo', '418620', '202001106@est.umss.edu', '123'),
	('202001107', 'Yaneth', 'Ceballos Ordonez', 'Av. Oquendo', '418620', '202001107@est.umss.edu', '123'),
	('202001108', 'Teresa', 'Guzman Gutierrez', 'Av. America', '418920', '202001108@est.umss.edu', '123'),
	('202001109', 'Teresa', 'Palacios Perez', 'Av. America', '418980', '202001109@est.umss.edu', '123'),
	('202001110', 'Teresa', 'Toledo Gomez', 'Av. America', '418980', '202001110@est.umss.edu', '123'),
	('202001111', 'Valeria', 'Garcia Gomez', 'Av. America', '438980', '202001111@est.umss.edu', '123'),
	('202001112', 'Valeria', 'Legarda Palacios', 'Av. America', '438980', '202001112@est.umss.edu', '123'),
	('202001113', 'Valentino', 'Legarda Palacios', 'Av. America', '438980', '202001113@est.umss.edu', '123'),
	('202001114', 'Vasco', 'Legarda Toledo', 'Av. America', '438980', '202001114@est.umss.edu', '123'),
	('202001115', 'Ulises', 'Guzman Sanchez', 'Av. America', '438980', '202001115@est.umss.edu', '123'),
	('202001116', 'Ubaldo', 'Guzman Ochoa', 'Av. Blanco Galindo', '438980', '202001116@est.umss.edu', '123'),
	('202001117', 'Uliana', 'Aristizibal Polo', 'Av. Blanco Galindo', '438980', '202001117@est.umss.edu', '123'),
	('202001118', 'Ursula', 'Polo Mamani', 'Av. Blanco Galindo', '438980', '202001118@est.umss.edu', '123'),
	('202001119', 'Wayra', 'Mamani Ichota', 'Av. Blanco Galindo', '438980', '202001119@est.umss.edu', '123'),
	('202001120', 'Wanda', 'Trujillo Mendoza', 'Av. Blanco Galindo', '438980', '202001120@est.umss.edu', '123'),
	('202001121', 'Walter', 'Mendoza Mamani', 'Av. Blanco Galindo', '438980', '202001121@est.umss.edu', '123'),
	('202001122', 'Wilson', 'Torres Encinas', 'Av. Blanco Galindo', '438980', '202001122@est.umss.edu', '123'),
	('202001123', 'William', 'Ochoa Nina', 'Av. Blanco Galindo', '438980', '202001123@est.umss.edu', '123'),
	('202001124', 'Xavier', 'Encinas Rojas', 'Av. Blanco Galindo', '456245', '202001124@est.umss.edu', '123'),
	('202001125', 'Ximena', 'Molina Loayza', 'Av. Blanco Galindo', '438980', '202001125@est.umss.edu', '123');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;

-- Dumping structure for table convocatoria.laboratorio
CREATE TABLE IF NOT EXISTS `laboratorio` (
  `item` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cantidad` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `hrs_academicas` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `auxiliatura` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `codigo_aux` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cod_SIS_lab` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Nro_identificacion_labo` int(11) NOT NULL AUTO_INCREMENT,
  `habilitado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Nro_identificacion_labo`),
  KEY `FK_laboratorio_estudiante` (`cod_SIS_lab`),
  CONSTRAINT `FK_laboratorio_estudiante` FOREIGN KEY (`cod_SIS_lab`) REFERENCES `estudiante` (`codigo_SIS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Dumping data for table convocatoria.laboratorio: ~65 rows (approximately)
/*!40000 ALTER TABLE `laboratorio` DISABLE KEYS */;
INSERT INTO `laboratorio` (`item`, `cantidad`, `hrs_academicas`, `auxiliatura`, `codigo_aux`, `cod_SIS_lab`, `Nro_identificacion_labo`, `habilitado`) VALUES
	('2', '2 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Desarrollo', 'LDS – ADM', '202001008', 1, b'0'),
	('2', '2 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Desarrollo', 'LDS – ADM', '202001009', 2, b'0'),
	('4', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Software', 'LM – ADM –SW', '202001010', 3, b'0'),
	('4', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Software', 'LM – ADM –SW', '202001011', 4, b'0'),
	('3', '2 Aux.', '56 Hrs/mes', 'Auxiliar de Laboratorio de Desarrollo', 'LDS – AUX', '202001012', 5, b'0'),
	('3', '2 Aux.', '56 Hrs/mes', 'Auxiliar de Laboratorio de Desarrollo', 'LDS – AUX', '202001013', 6, b'0'),
	('5', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Software', 'LM – AUX – SW', '202001014', 7, b'0'),
	('5', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Software', 'LM – AUX – SW', '202001015', 8, b'0'),
	('6', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Hardware', 'LM – ADM – HW', '202001016', 9, b'0'),
	('6', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Hardware', 'LM – ADM – HW', '202001017', 10, b'0'),
	('7', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Hardware', 'LM – AUX – HW', '202001018', 11, b'0'),
	('7', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Hardware', 'LM – AUX – HW', '202001019', 12, b'0'),
	('1', '7 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Computo', 'LCO – ADM', '202001020', 13, b'0'),
	('1', '7 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Computo', 'LCO – ADM', '202001021', 14, b'0'),
	('8', '1 Aux.', '80 Hrs/mes', 'Auxiliar de Terminal de Laboratorio de Computo', 'LDS – ATL', '202001022', 15, b'0'),
	('8', '1 Aux.', '80 Hrs/mes', 'Auxiliar de Terminal de Laboratorio de Computo', 'LDS – ATL', '202001023', 16, b'0'),
	('2', '2 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Desarrollo', 'LDS – ADM', '202001109', 17, b'0'),
	('2', '2 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Desarrollo', 'LDS – ADM', '202001110', 18, b'0'),
	('4', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Software', 'LM – ADM –SW', '202001111', 19, b'0'),
	('4', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Software', 'LM – ADM –SW', '202001112', 20, b'0'),
	('6', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Hardware', 'LM – ADM – HW', '202001113', 21, b'0'),
	('6', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Hardware', 'LM – ADM – HW', '202001114', 22, b'0'),
	('1', '7 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Computo', 'LCO – ADM', '202001115', 23, b'0'),
	('1', '7 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Computo', 'LCO – ADM', '202001116', 24, b'0'),
	('3', '2 Aux.', '56 Hrs/mes', 'Auxiliar de Laboratorio de Desarrollo', 'LDS – AUX', '202001117', 25, b'0'),
	('3', '2 Aux.', '56 Hrs/mes', 'Auxiliar de Laboratorio de Desarrollo', 'LDS – AUX', '202001118', 26, b'0'),
	('5', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Software', 'LM – AUX – SW', '202001119', 27, b'0'),
	('5', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Software', 'LM – AUX – SW', '202001120', 28, b'0'),
	('7', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Hardware', 'LM – AUX – HW', '202001121', 29, b'0'),
	('7', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Hardware', 'LM – AUX – HW', '202001122', 30, b'0'),
	('7', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Hardware', 'LM – AUX – HW', '202001123', 31, b'0'),
	('8', '1 Aux.', '80 Hrs/mes', 'Auxiliar de Terminal de Laboratorio de Computo', 'LDS – ATL', '202001124', 32, b'0'),
	('8', '1 Aux.', '80 Hrs/mes', 'Auxiliar de Terminal de Laboratorio de Computo', 'LDS – ATL', '202001125', 33, b'0'),
	('2', '2 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Desarrollo', 'LDS – ADM', '202001034', 39, b'1'),
	('2', '2 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Desarrollo', 'LDS – ADM', '202001035', 40, b'1'),
	('3', '2 Aux.', '56 Hrs/mes', 'Auxiliar de Laboratorio de Desarrollo', 'LDS – AUX', '202001036', 41, b'1'),
	('3', '2 Aux.', '56 Hrs/mes', 'Auxiliar de Laboratorio de Desarrollo', 'LDS – AUX', '202001037', 42, b'1'),
	('4', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Software', 'LM – ADM –SW', '202001038', 43, b'1'),
	('4', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Software', 'LM – ADM –SW', '202001039', 44, b'1'),
	('5', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Software', 'LM – AUX – SW', '202001040', 45, b'1'),
	('5', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Software', 'LM – AUX – SW', '202001041', 46, b'1'),
	('6', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Hardware', 'LM – ADM – HW', '202001043', 48, b'1'),
	('6', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Hardware', 'LM – ADM – HW', '202001042', 50, b'1'),
	('7', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Hardware', 'LM – AUX – HW', '202001044', 51, b'1'),
	('7', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Hardware', 'LM – AUX – HW', '202001045', 53, b'1'),
	('1', '7 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Computo', 'LCO – ADM', '202001046', 54, b'1'),
	('1', '7 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Computo', 'LCO – ADM', '202001047', 55, b'1'),
	('8', '1 Aux.', '80 Hrs/mes', 'Auxiliar de Terminal de Laboratorio de Computo', 'LDS – ATL', '202001048', 57, b'1'),
	('8', '1 Aux.', '80 Hrs/mes', 'Auxiliar de Terminal de Laboratorio de Computo', 'LDS – ATL', '202001049', 58, b'1'),
	('3', '2 Aux.', '56 Hrs/mes', 'Auxiliar de Laboratorio de Desarrollo', 'LDS – AUX', '202001059', 59, b'0'),
	('3', '2 Aux.', '56 Hrs/mes', 'Auxiliar de Laboratorio de Desarrollo', 'LDS – AUX', '202001060', 60, b'0'),
	('4', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Software', 'LM – ADM –SW', '202001061', 61, b'0'),
	('5', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Software', 'LM – AUX – SW', '202001063', 62, b'0'),
	('5', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Software', 'LM – AUX – SW', '202001064', 63, b'0'),
	('6', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Hardware', 'LM – ADM – HW', '202001065', 64, b'0'),
	('6', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Hardware', 'LM – ADM – HW', '202001066', 65, b'0'),
	('7', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Hardware', 'LM – AUX – HW', '202001067', 66, b'0'),
	('7', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Hardware', 'LM – AUX – HW', '202001068', 67, b'0'),
	('1', '7 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Computo', 'LCO – ADM', '202001069', 68, b'0'),
	('1', '7 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Computo', 'LCO – ADM', '202001070', 69, b'0'),
	('8', '1 Aux.', '80 Hrs/mes', 'Auxiliar de Terminal de Laboratorio de Computo', 'LDS – ATL', '202001071', 70, b'0'),
	('8', '1 Aux.', '80 Hrs/mes', 'Auxiliar de Terminal de Laboratorio de Computo', 'LDS – ATL', '202001072', 71, b'0'),
	('2', '2 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Desarrollo', 'LDS – ADM', '202001058', 72, b'0'),
	('2', '2 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Desarrollo', 'LDS – ADM', '20200105requisitos_laboratorioestudiantelaboratori', 73, b'0'),
	('4', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Software', 'LM – ADM –SW', '202001062', 74, b'0'),
	('3', '2 Aux.', '56 Hrs/mes', 'Auxiliar de Laboratorio de Desarrollo', 'LDS – AUX', '202001026', 84, b'0');
/*!40000 ALTER TABLE `laboratorio` ENABLE KEYS */;

-- Dumping structure for table convocatoria.pizarron
CREATE TABLE IF NOT EXISTS `pizarron` (
  `item` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cantidad` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `hrs_academicas` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `destino` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cod_SIS_pizarra` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Nro_identificacion_piza` int(11) NOT NULL AUTO_INCREMENT,
  `habilitado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Nro_identificacion_piza`) USING BTREE,
  KEY `FK_pizarra_estudiante` (`cod_SIS_pizarra`),
  CONSTRAINT `FK_pizarra_estudiante` FOREIGN KEY (`cod_SIS_pizarra`) REFERENCES `estudiante` (`codigo_SIS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Dumping data for table convocatoria.pizarron: ~35 rows (approximately)
/*!40000 ALTER TABLE `pizarron` DISABLE KEYS */;
INSERT INTO `pizarron` (`item`, `cantidad`, `hrs_academicas`, `destino`, `cod_SIS_pizarra`, `Nro_identificacion_piza`, `habilitado`) VALUES
	('4', '2 Aux.', '8 Hrs/mes', 'Computacion I', '202001056', 1, b'0'),
	('1', '9 Aux.', '8 Hrs/mes', 'Introduccion a la Programacion', '202001051', 5, b'1'),
	('1', '9 Aux.', '8 Hrs/mes', 'Introduccion a la Programacion', '202001052', 6, b'1'),
	('3', '1 Aux.', '8 Hrs/mes', 'Teoria de Grafos', '202001053', 7, b'0'),
	('3', '1 Aux.', '8 Hrs/mes', 'Teoria de Grafos', '202001054', 8, b'1'),
	('4', '2 Aux.', '8 Hrs/mes', 'Computacion I', '202001055', 9, b'0'),
	('2', '4 Aux.', '8 Hrs/mes', 'Elementos de Programacion y Estructura de Datos', '202001073', 11, b'0'),
	('2', '4 Aux.', '8 Hrs/mes', 'Elementos de Programacion y Estructura de Datos', '202001074', 12, b'0'),
	('1', '9 Aux.', '8 Hrs/mes', 'Introduccion a la Programacion', '202001101', 13, b'0'),
	('1', '9 Aux.', '8 Hrs/mes', 'Introduccion a la Programacion', '202001102', 14, b'0'),
	('2', '4 Aux.', '8 Hrs/mes', 'Elementos de Programacion y Estructura de Datos', '202001103', 15, b'0'),
	('2', '4 Aux.', '8 Hrs/mes', 'Elementos de Programacion y Estructura de Datos', '202001104', 16, b'0'),
	('3', '1 Aux.', '8 Hrs/mes', 'Teoria de Grafos', '202001105', 17, b'0'),
	('3', '1 Aux.', '8 Hrs/mes', 'Teoria de Grafos', '202001106', 18, b'0'),
	('4', '2 Aux.', '8 Hrs/mes', 'Computacion I', '202001107', 19, b'0'),
	('4', '2 Aux.', '8 Hrs/mes', 'Computacion I', '202001108', 20, b'0'),
	('2', '4 Aux.', '8 Hrs/mes', 'Elementos de Programacion y Estructura de Datos', '202001027', 35, b'1'),
	('1', '9 Aux.', '8 Hrs/mes', 'Introduccion a la Programacion', '202001028', 36, b'1'),
	('3', '1 Aux.', '8 Hrs/mes', 'Teoria de Grafos', '202001030', 38, b'1'),
	('2', '4 Aux.', '8 Hrs/mes', 'Elementos de Programacion y Estructura de Datos', '202001026', 39, b'1'),
	('1', '9 Aux.', '8 Hrs/mes', 'Introduccion a la Programacion', '202001029', 40, b'1'),
	('4', '2 Aux.', '8 Hrs/mes', 'Computacion I', '202001031', 41, b'0'),
	('4', '2 Aux.', '8 Hrs/mes', 'Computacion I', '202001032', 42, b'1'),
	('3', '1 Aux.', '8 Hrs/mes', 'Teoria de Grafos', '202001033', 43, b'1'),
	('2', '4 Aux.', '8 Hrs/mes', 'Elementos de Programacion y Estructura de Datos', '202001050', 44, b'1'),
	('3', '1 Aux.', '8 Hrs/mes', 'Teoria de Grafos', '202001026', 45, b'1'),
	('2', '4 Aux.', '8 Hrs/mes', 'Elementos de Programacion y Estructura de Datos', '202001000', 53, b'0'),
	('2', '4 Aux.', '8 Hrs/mes', 'Elementos de Programacion y Estructura de Datos', '202001001', 54, b'0'),
	('1', '9 Aux.', '8 Hrs/mes', 'Introduccion a la Programacion', '202001003', 55, b'0'),
	('1', '9 Aux.', '8 Hrs/mes', 'Introduccion a la Programacion', '202001002', 56, b'0'),
	('3', '1 Aux.', '8 Hrs/mes', 'Teoria de Grafos', '202001004', 57, b'0'),
	('3', '1 Aux.', '8 Hrs/mes', 'Teoria de Grafos', '202001005', 58, b'0'),
	('4', '2 Aux.', '8 Hrs/mes', 'Computacion I', '202001006', 59, b'0'),
	('4', '2 Aux.', '8 Hrs/mes', 'Computacion I', '202001007', 60, b'0'),
	('4', '2 Aux.', '8 Hrs/mes', 'Computacion I', '202001025', 61, b'0'),
	('1', '9 Aux.', '8 Hrs/mes', 'Introduccion a la Programacion', '202001026', 62, b'0');
/*!40000 ALTER TABLE `pizarron` ENABLE KEYS */;

-- Dumping structure for table convocatoria.requisitos_laboratorio
CREATE TABLE IF NOT EXISTS `requisitos_laboratorio` (
  `Item_req` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Estudiante` bit(1) DEFAULT NULL,
  `concluir_pensum` bit(1) DEFAULT NULL,
  `sin_titulo` bit(1) DEFAULT NULL,
  `sin_deudas` bit(1) DEFAULT NULL,
  `aprobar_sextoSemestre` bit(1) DEFAULT NULL,
  `aprobar_concursoMeritos` bit(1) DEFAULT NULL,
  `codigo_SIS_req_labo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `aprobado_labo_req` bit(1) DEFAULT NULL,
  `Nro_identificacion_req_labo` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Nro_identificacion_req_labo`),
  KEY `FK_requisitos_laboratorio` (`codigo_SIS_req_labo`),
  CONSTRAINT `FK_requisitos_laboratorio` FOREIGN KEY (`codigo_SIS_req_labo`) REFERENCES `estudiante` (`codigo_SIS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table convocatoria.requisitos_laboratorio: ~4 rows (approximately)
/*!40000 ALTER TABLE `requisitos_laboratorio` DISABLE KEYS */;
INSERT INTO `requisitos_laboratorio` (`Item_req`, `Estudiante`, `concluir_pensum`, `sin_titulo`, `sin_deudas`, `aprobar_sextoSemestre`, `aprobar_concursoMeritos`, `codigo_SIS_req_labo`, `aprobado_labo_req`, `Nro_identificacion_req_labo`) VALUES
	('8', b'1', b'1', b'1', b'1', b'1', b'1', '202001049', b'1', 72),
	('2', b'1', b'1', b'1', b'1', b'1', b'1', '202001034', b'1', 73),
	('3', b'1', b'1', b'1', b'1', b'1', b'1', '202001036', b'1', 74),
	('6', b'1', b'1', b'1', b'1', b'1', b'1', '202001042', b'1', 75),
	('7', b'0', b'1', b'1', b'1', b'0', b'0', '202001044', b'0', 76);
/*!40000 ALTER TABLE `requisitos_laboratorio` ENABLE KEYS */;

-- Dumping structure for table convocatoria.requisitos_pizarra
CREATE TABLE IF NOT EXISTS `requisitos_pizarra` (
  `Item_req` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Estudiante` bit(1) DEFAULT NULL,
  `concluir_pensum` bit(1) DEFAULT NULL,
  `sin_titulo` bit(1) DEFAULT NULL,
  `aprobado_materia` bit(1) DEFAULT NULL,
  `sin_deudas` bit(1) DEFAULT NULL,
  `aprobar_concursoMeritos` bit(1) DEFAULT NULL,
  `codigo_SIS_req_pizarra` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `aprobado_piza_req` bit(1) DEFAULT NULL,
  `Nro_identificacion_req` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Nro_identificacion_req`),
  KEY `FK_requisitos_piza` (`codigo_SIS_req_pizarra`),
  CONSTRAINT `FK_requisitos_piza` FOREIGN KEY (`codigo_SIS_req_pizarra`) REFERENCES `estudiante` (`codigo_SIS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Dumping data for table convocatoria.requisitos_pizarra: ~12 rows (approximately)
/*!40000 ALTER TABLE `requisitos_pizarra` DISABLE KEYS */;
INSERT INTO `requisitos_pizarra` (`Item_req`, `Estudiante`, `concluir_pensum`, `sin_titulo`, `aprobado_materia`, `sin_deudas`, `aprobar_concursoMeritos`, `codigo_SIS_req_pizarra`, `aprobado_piza_req`, `Nro_identificacion_req`) VALUES
	('2', b'1', b'1', b'1', b'1', b'1', b'1', '202001027', b'1', 54),
	('3', b'1', b'1', b'1', b'1', b'1', b'1', '202001030', b'1', 55),
	('3', b'1', b'1', b'1', b'1', b'1', b'1', '202001033', b'1', 56),
	('2', b'0', b'1', b'0', b'1', b'0', b'0', '202001026', b'0', 57),
	('4', b'0', b'1', b'0', b'0', b'1', b'0', '202001031', b'0', 58),
	('2', b'1', b'1', b'1', b'1', b'1', b'1', '202001050', b'1', 59),
	('4', b'1', b'1', b'1', b'1', b'1', b'1', '202001032', b'1', 60),
	('1', b'1', b'1', b'1', b'1', b'1', b'1', '202001029', b'1', 61),
	('1', b'1', b'1', b'1', b'1', b'1', b'1', '202001028', b'1', 62),
	('1', b'1', b'1', b'1', b'1', b'1', b'1', '202001052', b'1', 63),
	('1', b'1', b'1', b'1', b'1', b'1', b'1', '202001051', b'1', 64),
	('3', b'1', b'1', b'1', b'1', b'0', b'0', '202001054', b'0', 65),
	('3', b'1', b'1', b'1', b'1', b'1', b'1', '202001026', b'1', 66);
/*!40000 ALTER TABLE `requisitos_pizarra` ENABLE KEYS */;

-- Dumping structure for table convocatoria.secretaria
CREATE TABLE IF NOT EXISTS `secretaria` (
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `secretaria` varchar(50) COLLATE utf8_spanish2_ci NOT NULL DEFAULT '',
  `contraseña` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`secretaria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Dumping data for table convocatoria.secretaria: ~0 rows (approximately)
/*!40000 ALTER TABLE `secretaria` DISABLE KEYS */;
INSERT INTO `secretaria` (`nombre`, `apellidos`, `secretaria`, `contraseña`) VALUES
	('secre', 'nose', 'secre', '123');
/*!40000 ALTER TABLE `secretaria` ENABLE KEYS */;

-- Dumping structure for table convocatoria.tabla_notas_labo
CREATE TABLE IF NOT EXISTS `tabla_notas_labo` (
  `Item` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cod_SIS_notas` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nota_final` double DEFAULT NULL,
  `aprobado` int(11) DEFAULT NULL,
  `Nro_identificacion_nota_piza` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Nro_identificacion_nota_piza`) USING BTREE,
  KEY `FK_notas_pizarra` (`cod_SIS_notas`) USING BTREE,
  CONSTRAINT `FK_notas_laboratorio` FOREIGN KEY (`cod_SIS_notas`) REFERENCES `estudiante` (`codigo_SIS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table convocatoria.tabla_notas_labo: ~2 rows (approximately)
/*!40000 ALTER TABLE `tabla_notas_labo` DISABLE KEYS */;
INSERT INTO `tabla_notas_labo` (`Item`, `cod_SIS_notas`, `nota_final`, `aprobado`, `Nro_identificacion_nota_piza`) VALUES
	('8', '202001049', 64.4, 1, 65),
	('2', '202001034', 30.6, 0, 66),
	('3', '202001036', 20.6, 0, 67);
/*!40000 ALTER TABLE `tabla_notas_labo` ENABLE KEYS */;

-- Dumping structure for table convocatoria.tabla_notas_piza
CREATE TABLE IF NOT EXISTS `tabla_notas_piza` (
  `Item` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cod_SIS_notas` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nota_final` double DEFAULT NULL,
  `aprobado` int(11) DEFAULT NULL,
  `Nro_identificacion_nota_piza` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Nro_identificacion_nota_piza`),
  KEY `FK_notas_pizarra` (`cod_SIS_notas`) USING BTREE,
  CONSTRAINT `FK_notas_pizarra` FOREIGN KEY (`cod_SIS_notas`) REFERENCES `estudiante` (`codigo_SIS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Dumping data for table convocatoria.tabla_notas_piza: ~3 rows (approximately)
/*!40000 ALTER TABLE `tabla_notas_piza` DISABLE KEYS */;
INSERT INTO `tabla_notas_piza` (`Item`, `cod_SIS_notas`, `nota_final`, `aprobado`, `Nro_identificacion_nota_piza`) VALUES
	('2', '202001027', 81, 1, 54),
	('2', '202001050', 71, 1, 55),
	('1', '202001028', 83.6, 1, 56);
/*!40000 ALTER TABLE `tabla_notas_piza` ENABLE KEYS */;

-- Dumping structure for table convocatoria.tribunal
CREATE TABLE IF NOT EXISTS `tribunal` (
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tribu` varchar(50) COLLATE utf8_spanish2_ci NOT NULL DEFAULT '',
  `contraseña` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `funcion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`tribu`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Dumping data for table convocatoria.tribunal: ~14 rows (approximately)
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
