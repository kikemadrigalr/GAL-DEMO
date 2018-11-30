CREATE PROCEDURE [dbo].[spUpdateEmpleado]
	(@cCedula VARCHAR(8),
@cNombre VARCHAR(20),
@cApellido VARCHAR(20),
@cCorreo varchar(50))
AS

	UPDATE empleado
	SET nombre = @cNombre,
		apellido = @cApellido,
		correo = @cCorreo
	WHERE cedula = @cCedula;
