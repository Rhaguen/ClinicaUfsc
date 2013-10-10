-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela Grupo
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'GrupoList' 
)
   DROP PROCEDURE dbo.GrupoList
GO

CREATE PROCEDURE GrupoList
AS
	SELECT
		id,
		nome
	FROM Grupo
GO

