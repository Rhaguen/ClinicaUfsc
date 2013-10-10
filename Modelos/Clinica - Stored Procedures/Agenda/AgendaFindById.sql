-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela Agenda a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AgendaFindById' 
)
   DROP PROCEDURE dbo.AgendaFindById
GO

CREATE PROCEDURE AgendaFindById
@diaDaSemana tinyint

AS
	SELECT 
		diaDaSemana,
		profissional_id,
		inicioExpediente,
		fimExpediente,
		inicioIntervalo,
		fimIntervalo
	FROM Agenda
	WHERE
		diaDaSemana = @diaDaSemana
GO

