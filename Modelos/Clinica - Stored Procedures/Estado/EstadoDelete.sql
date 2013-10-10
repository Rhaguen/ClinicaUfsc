-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela Estado
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'EstadoDelete' 
)
   DROP PROCEDURE dbo.EstadoDelete
GO

CREATE PROCEDURE EstadoDelete
@id int
AS
	DELETE FROM Estado
	WHERE 
		id = @id
GO

