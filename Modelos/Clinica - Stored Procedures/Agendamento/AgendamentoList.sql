-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela Agendamento
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AgendamentoList' 
)
   DROP PROCEDURE dbo.AgendamentoList
GO

CREATE PROCEDURE AgendamentoList
AS
	SELECT
		id,
		profissionalespecialidade_id,
		pacienteplano_id,
		formaPagamento,
		dataHora,
		valorCobrado,
		pago,
		dataPagamento,
		cadastradoPor
	FROM Agendamento
GO

