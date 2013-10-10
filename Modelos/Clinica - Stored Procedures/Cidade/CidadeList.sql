-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela Cidade
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'CidadeList' 
)
   DROP PROCEDURE dbo.CidadeList
GO

CREATE PROCEDURE CidadeList
AS
	SELECT
		id,
		nome,
		estado_id
	FROM Cidade
GO

