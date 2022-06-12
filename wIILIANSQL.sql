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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Dumping data for table convocatoria.calificacion_meritos_pi: ~6 rows (approximately)
/*!40000 ALTER TABLE `calificacion_meritos_pi` DISABLE KEYS */;
INSERT INTO `calificacion_meritos_pi` (`Item`, `prom_aprobacion`, `prom_general`, `auxiliar_docente`, `auxiliar_otros`, `cursos_participacion`, `experiencia_operador`, `cod_SIS_mer`, `experiencia_docente`, `Nro_identificacion_meri_pi`) VALUES
	('2', 20, 18, 11, 2, 2, 2, '202001027', 2, 40),
	('3', 10, 12, 9, 2, 5, 1, '202001030', 1, 41),
	('3', 0, 0, 6, 2, 2, 1, '202001033', 1, 42),
	('2', 12, 18, 12, 2, 5, 5, '202001050', 5, 43),
	('4', 12, 13, 6, 5, 5, 1, '202001032', 1, 44),
	('1', 10, 12, 3, 2, 5, 1, '202001028', 1, 45);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Dumping data for table convocatoria.documentos_pizarra: ~7 rows (approximately)
/*!40000 ALTER TABLE `documentos_pizarra` DISABLE KEYS */;
INSERT INTO `documentos_pizarra` (`Item_doc`, `solicitud`, `kardex`, `certificado_de_condicion`, `certificado_de_rendimiento`, `certificado_sin_titulo`, `carnet_identidad`, `certificado_biblioteca`, `resumen_CV`, `respaldo_CV`, `cod_SIS_doc`, `aprobado_piza_doc`, `Nro_identificacion_docu_piza`) VALUES
	('2', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '202001027', b'1', 34),
	('3', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '202001030', b'1', 35),
	('3', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '202001033', b'1', 36),
	('2', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '202001050', b'1', 37),
	('4', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '202001032', b'1', 38),
	('1', b'1', b'1', b'0', b'1', b'1', b'1', b'1', b'1', b'1', '202001029', b'0', 39),
	('1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '202001028', b'1', 40);
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

-- Dumping data for table convocatoria.estudiante: ~25 rows (approximately)
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
	('202001049', 'Jaldino', 'Rivero', 'Oruro', '564654564', '202001049@est.edu.umss', '123'),
	('202001050', 'Jile', 'Corona', 'Molle', '54654654', '202001050@est.edu.umss', '123');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Dumping data for table convocatoria.laboratorio: ~16 rows (approximately)
/*!40000 ALTER TABLE `laboratorio` DISABLE KEYS */;
INSERT INTO `laboratorio` (`item`, `cantidad`, `hrs_academicas`, `auxiliatura`, `codigo_aux`, `cod_SIS_lab`, `Nro_identificacion_labo`, `habilitado`) VALUES
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
	('8', '1 Aux.', '80 Hrs/mes', 'Auxiliar de Terminal de Laboratorio de Computo', 'LDS – ATL', '202001049', 58, b'1');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Dumping data for table convocatoria.pizarron: ~9 rows (approximately)
/*!40000 ALTER TABLE `pizarron` DISABLE KEYS */;
INSERT INTO `pizarron` (`item`, `cantidad`, `hrs_academicas`, `destino`, `cod_SIS_pizarra`, `Nro_identificacion_piza`, `habilitado`) VALUES
	('2', '4 Aux.', '8 Hrs/mes', 'Elementos de Programacion y Estructura de Datos', '202001027', 35, b'1'),
	('1', '9 Aux.', '8 Hrs/mes', 'Introduccion a la Programacion', '202001028', 36, b'1'),
	('3', '1 Aux.', '8 Hrs/mes', 'Teoria de Grafos', '202001030', 38, b'1'),
	('2', '4 Aux.', '8 Hrs/mes', 'Elementos de Programacion y Estructura de Datos', '202001026', 39, b'1'),
	('1', '9 Aux.', '8 Hrs/mes', 'Introduccion a la Programacion', '202001029', 40, b'1'),
	('4', '2 Aux.', '8 Hrs/mes', 'Computacion I', '202001031', 41, b'1'),
	('4', '2 Aux.', '8 Hrs/mes', 'Computacion I', '202001032', 42, b'1'),
	('3', '1 Aux.', '8 Hrs/mes', 'Teoria de Grafos', '202001033', 43, b'1'),
	('2', '4 Aux.', '8 Hrs/mes', 'Elementos de Programacion y Estructura de Datos', '202001050', 44, b'1');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table convocatoria.requisitos_laboratorio: ~4 rows (approximately)
/*!40000 ALTER TABLE `requisitos_laboratorio` DISABLE KEYS */;
INSERT INTO `requisitos_laboratorio` (`Item_req`, `Estudiante`, `concluir_pensum`, `sin_titulo`, `sin_deudas`, `aprobar_sextoSemestre`, `aprobar_concursoMeritos`, `codigo_SIS_req_labo`, `aprobado_labo_req`, `Nro_identificacion_req_labo`) VALUES
	('8', b'1', b'1', b'1', b'1', b'1', b'1', '202001049', b'1', 72),
	('2', b'1', b'1', b'1', b'1', b'1', b'1', '202001034', b'1', 73),
	('3', b'1', b'1', b'1', b'1', b'1', b'1', '202001036', b'1', 74),
	('6', b'1', b'1', b'1', b'1', b'1', b'1', '202001042', b'1', 75);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Dumping data for table convocatoria.requisitos_pizarra: ~9 rows (approximately)
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
	('1', b'1', b'1', b'1', b'1', b'1', b'1', '202001028', b'1', 62);
/*!40000 ALTER TABLE `requisitos_pizarra` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
