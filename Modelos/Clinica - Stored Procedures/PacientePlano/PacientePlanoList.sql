-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela PacientePlano
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PacientePlanoList' 
)
   DROP PROCEDURE dbo.PacientePlanoList
GO

CREATE PROCEDURE PacientePlanoList
AS
	SELECT
		id,
		vencimento,
		matricula,
		paciente_id,
		plano_id
	FROM PacientePlano
GO

