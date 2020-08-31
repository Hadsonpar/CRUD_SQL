USE [BD_TEST]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[SP_ELIMINAR_USUARIO]
		@id = 1

SELECT	'Return Value' = @return_value

GO
