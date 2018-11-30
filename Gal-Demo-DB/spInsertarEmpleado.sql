CREATE PROCEDURE [dbo].[spInsertarEmpleado]
	(@cCedula VARCHAR(8),
@cNombre VARCHAR(20),
@cApellido VARCHAR(20),
@cCorreo varchar(50),
@cEstado bit,
/*@cFecha varchar(20),
@cRuta varchar(200), */
@cMensaje VARCHAR(100) OUTPUT)

AS

if EXISTS(SELECT 1 FROM empleado WHERE cedula = @cCedula) 
BEGIN
	SET @cMensaje = 'La cedula ya esta registrada';
END
else
BEGIN
	INSERT INTO empleado( cedula, nombre, apellido, correo, estado)
	VALUES(@cCedula, @cNombre, @cApellido, @cCorreo, @cEstado);
	
	SET @cMensaje = 'Datos Guardados con Exito!...';
END

if @@ERROR != 0
BEGIN
	SET @cMensaje = 'Se produjo un error durante el Proceso';
END

