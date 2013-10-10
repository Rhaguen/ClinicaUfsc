-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela Acao
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AcaoList' 
)
   DROP PROCEDURE dbo.AcaoList
GO

CREATE PROCEDURE AcaoList
AS
	SELECT
		id,
		nome,
		acao
	FROM Acao
GO

