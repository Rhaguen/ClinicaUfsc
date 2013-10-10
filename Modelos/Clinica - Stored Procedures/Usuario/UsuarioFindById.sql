-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela Usuario a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'UsuarioFindById' 
)
   DROP PROCEDURE dbo.UsuarioFindById
GO

CREATE PROCEDURE UsuarioFindById
@id int

AS
	SELECT 
		id,
		login,
		senha,
		grupo_id
	FROM Usuario
	WHERE
		id = @id
GO

