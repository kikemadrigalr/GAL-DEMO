CREATE PROCEDURE [dbo].[spModificarEmpleado]
	(@cCedula VARCHAR(8),
@cNombre VARCHAR(20),
@cApellido VARCHAR(20),
@cCorreo varchar(50),
--@cFecha varchar(20),
--@cRuta varchar(200), 
@cMensaje VARCHAR(100) OUTPUT)
AS

if exists(SELECT 1 FROM empleado WHERE cedula = @cCedula) 
BEGIN
	SET @cMensaje = 'La cedula No está registrada';
END
else
BEGIN
	UPDATE empleado
	SET
	nombre = @cNombre,
	apellido = @cApellido,
	cedula = @cCedula, 
	correo = @cCorreo 
	--fecha_nacimiento = @cFecha,
	--ruta_foto = @cRuta
	WHERE
	cedula = @cCedula;
	
	SET @cMensaje = 'Datos Guardados con Exito!...';
END

if @@ERROR != 0
BEGIN
	SET @cMensaje = 'Se produjo un error durante el Proceso';
END

