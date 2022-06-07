CREATE DATABASE FULLCALENDAR;

USE FULLCALENDAR;

CREATE TABLE actividades
(
	idactividad			INT AUTO_INCREMENT PRIMARY KEY,
	fechainicio 		DATE 					NOT NULL,
	fechafin				DATE 					NOT NULL,
	horainicio			TIME 					NOT NULL,
	horafin					TIME 					NOT NULL,
	titulo					VARCHAR(45)		NOT NULL,
	descripcion			VARCHAR(150)	NULL,
	direccion				VARCHAR(80)		NULL
)ENGINE = INNODB;

		
		