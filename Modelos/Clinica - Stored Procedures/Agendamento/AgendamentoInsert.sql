-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela Agendamento
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AgendamentoInsert' 
)
   DROP PROCEDURE dbo.AgendamentoInsert
GO

CREATE PROCEDURE AgendamentoInsert
   @profissionalespecialidade_id int,
   @pacienteplano_id int,
   @formaPagamento smallint,
   @dataHora timestamp,
   @valorCobrado numeric = null,
   @pago bit = null,
   @dataPagamento date = null,
   @cadastradoPor int
AS
	INSERT INTO Agendamento 
	(
       profissionalespecialidade_id, 
       pacienteplano_id, 
       formaPagamento, 
       dataHora, 
       valorCobrado, 
       pago, 
       dataPagamento, 
       cadastradoPor
	) 
	VALUES
	(
       @profissionalespecialidade_id, 
       @pacienteplano_id, 
       @formaPagamento, 
       @dataHora, 
       @valorCobrado, 
       @pago, 
       @dataPagamento, 
       @cadastradoPor
	)
GO

