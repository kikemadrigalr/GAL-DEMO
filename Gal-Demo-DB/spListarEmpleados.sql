CREATE PROCEDURE [dbo].[spListarEmpleado]

AS

SELECT * FROM empleado where estado = 1 ORDER BY id ASC  
