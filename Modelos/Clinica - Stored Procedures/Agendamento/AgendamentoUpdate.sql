-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela Agendamento
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AgendamentoUpdate' 
)
   DROP PROCEDURE dbo.AgendamentoUpdate
GO

CREATE PROCEDURE AgendamentoUpdate
   @id int,
   @profissionalespecialidade_id int,
   @pacienteplano_id int,
   @formaPagamento smallint,
   @dataHora timestamp,
   @valorCobrado numeric = null,
   @pago bit = null,
   @dataPagamento date = null,
   @cadastradoPor int
AS
	UPDATE Agendamento
		SET
           profissionalespecialidade_id = @profissionalespecialidade_id, 
           pacienteplano_id = @pacienteplano_id, 
           formaPagamento = @formaPagamento, 
           dataHora = @dataHora, 
           valorCobrado = @valorCobrado, 
           pago = @pago, 
           dataPagamento = @dataPagamento, 
           cadastradoPor = @cadastradoPor
	WHERE 
		id = @id
GO

