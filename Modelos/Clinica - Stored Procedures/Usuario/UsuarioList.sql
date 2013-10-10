-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela Usuario
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'UsuarioList' 
)
   DROP PROCEDURE dbo.UsuarioList
GO

CREATE PROCEDURE UsuarioList
AS
	SELECT
		id,
		login,
		senha,
		grupo_id
	FROM Usuario
GO

