-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela Profissional
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'ProfissionalList' 
)
   DROP PROCEDURE dbo.ProfissionalList
GO

CREATE PROCEDURE ProfissionalList
AS
	SELECT
		id,
		crm,
		tipo,
		pessoa_id
	FROM Profissional
GO

