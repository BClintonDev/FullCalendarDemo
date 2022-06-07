USE FULLCANEDAR;

DELIMITER $$
CREATE PROCEDURE spu_listar_actividades()
BEGIN
	SELECT * FROM actividades;
END $$


-- Registrar actividad
DELIMITER $$
CREATE PROCEDURE spu_registrar_actividades
(
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
END $$


-- Modificar actividad
DELIMITER $$
CREATE PROCEDURE spu_modificar_actividades
(	
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
END $$

DELIMITER $$
CREATE PROCEDURE spu_actividades_getdata(IN _idactividad INT)
BEGIN
	SELECT * FROM actividades  WHERE idactividad = _idactividad;
END $$


-- Eliminar actividad
DELIMITER $$
CREATE PROCEDURE spu_eliminar_actividades(IN _idactividad INT)
BEGIN
	DELETE FROM actividades WHERE idactividad = _idactividad;
END $$

