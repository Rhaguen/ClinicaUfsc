-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela Agenda
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AgendaList' 
)
   DROP PROCEDURE dbo.AgendaList
GO

CREATE PROCEDURE AgendaList
AS
	SELECT
		diaDaSemana,
		profissional_id,
		inicioExpediente,
		fimExpediente,
		inicioIntervalo,
		fimIntervalo
	FROM Agenda
GO

