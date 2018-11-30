CREATE PROCEDURE [dbo].[spConsultarEmpleado]
	@cCedula varchar(20)
AS

SELECT
id,
cedula,
nombre,
apellido,
correo
/*fecha_nacimiento,
ruta_foto*/
FROM empleado WHERE cedula = @cCedula AND estado = 1
