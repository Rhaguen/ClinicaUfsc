-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela Agendamento a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AgendamentoFindById' 
)
   DROP PROCEDURE dbo.AgendamentoFindById
GO

CREATE PROCEDURE AgendamentoFindById
@id int

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
	WHERE
		id = @id
GO

