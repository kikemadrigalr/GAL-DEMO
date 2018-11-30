CREATE PROCEDURE [dbo].[spCambiarEstado]
(@cCedula varchar(8),
@cMensaje varchar(100) OUTPUT)
AS

if EXISTS(SELECT 1 FROM empleado WHERE cedula = @cCedula) 
BEGIN
	UPDATE empleado
	SET estado = '0'
	where cedula = @cCedula;
	
	SET @cMensaje = 'Ragistro Borrado!...';
END

if @@ERROR != 0
BEGIN
	SET @cMensaje = 'Se produjo un error durante el Proceso';
END
