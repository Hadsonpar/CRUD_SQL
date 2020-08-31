USE [BD_TEST]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[SP_ACTUALIZAR_USUARIO]
		@usuario = N'CESAR01',
		@contrasena = N'Ce$ar1234',
		@intentos = 3,
		@nivelSeg = 5,
		@fechaReg = '31-08-20 12:40:09 AM',
		@id = 3

SELECT	'Return Value' = @return_value

GO
