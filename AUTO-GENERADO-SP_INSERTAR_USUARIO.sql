USE [BD_TEST]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[SP_INSERTAR_USUARIO]
		@usuario = N'LIZZET',
		@contrasena = N'LiZ12345',
		@intentos = 3,
		@nivelSeg = 5,
		@fechaReg = '31-08-20 12:4:09 AM'

SELECT	'Return Value' = @return_value

GO