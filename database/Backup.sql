/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.24-MariaDB : Database - fullcalendar
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fullcalendar` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `fullcalendar`;

/*Table structure for table `actividades` */

DROP TABLE IF EXISTS `actividades`;

CREATE TABLE `actividades` (
  `idactividad` int(11) NOT NULL AUTO_INCREMENT,
  `fechainicio` date NOT NULL,
  `fechafin` date NOT NULL,
  `horainicio` time NOT NULL,
  `horafin` time NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `direccion` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`idactividad`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `actividades` */

insert  into `actividades`(`idactividad`,`fechainicio`,`fechafin`,`horainicio`,`horafin`,`titulo`,`descripcion`,`direccion`) values 
(3,'2022-06-23','2022-06-24','13:00:00','01:00:00','Otro','',''),
(7,'2022-06-14','2022-06-16','00:00:00','11:00:00','Agenda 3','Trabajo por realizar','Av Lima');

/* Procedure structure for procedure `spu_actividades_getdata` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_actividades_getdata` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_actividades_getdata`(IN _idactividad INT)
BEGIN
	SELECT * FROM actividades  WHERE idactividad = _idactividad;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_eliminar_actividades` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_eliminar_actividades` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_eliminar_actividades`(IN _idactividad INT)
BEGIN
	DELETE FROM actividades WHERE idactividad = _idactividad;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_listar_actividades` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_listar_actividades` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_listar_actividades`()
BEGIN
	SELECT * FROM actividades;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_modificar_actividades` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_modificar_actividades` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_modificar_actividades`(	
	IN _idactividad			INT,
	IN _fechainicio			DATE,
	IN _fechafin				DATE,
	IN _horainicio			TIME,	
	IN _horafin					TIME,
	IN _titulo					VARCHAR(45),
	IN _descripcion			VARCHAR(150),
	IN _direccion				VARCHAR(80)
)
BEGIN
	UPDATE actividades SET 	
		fechainicio			= _fechainicio, 
		fechafin				= _fechafin,
		horainicio			= _horainicio,
		horafin					= _horafin,
		titulo 					= _titulo, 
		descripcion 		= _descripcion, 
		direccion 			= _direccion
	WHERE idactividad = _idactividad;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_registrar_actividades` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_registrar_actividades` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_registrar_actividades`(
	IN _fechainicio			DATE,
	IN _fechafin				DATE,
	IN _horainicio			TIME,	
	IN _horafin					TIME,
	IN _titulo					VARCHAR(45),
	IN _descripcion			VARCHAR(150),
	IN _direccion				VARCHAR(80)
)
BEGIN 
	INSERT INTO actividades (fechainicio, fechafin, horainicio, horafin, titulo, descripcion, direccion) VALUES
		(_fechainicio, _fechafin, _horainicio, _horafin, _titulo, _descripcion, _direccion);
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
