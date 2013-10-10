-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela Especialidade
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'EspecialidadeList' 
)
   DROP PROCEDURE dbo.EspecialidadeList
GO

CREATE PROCEDURE EspecialidadeList
AS
	SELECT
		id,
		nome
	FROM Especialidade
GO

