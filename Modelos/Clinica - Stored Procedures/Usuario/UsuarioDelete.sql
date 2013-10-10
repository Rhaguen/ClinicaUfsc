-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela Usuario
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'UsuarioDelete' 
)
   DROP PROCEDURE dbo.UsuarioDelete
GO

CREATE PROCEDURE UsuarioDelete
@id int
AS
	DELETE FROM Usuario
	WHERE 
		id = @id
GO

