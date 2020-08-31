USE [BD_TEST]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[SP_SELECCIONAR_USUARIO]
		@id = 2

SELECT	'Return Value' = @return_value

GO
