-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela Agenda
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AgendaUpdate' 
)
   DROP PROCEDURE dbo.AgendaUpdate
GO

CREATE PROCEDURE AgendaUpdate
   @diaDaSemana tinyint,
   @profissional_id int = null,
   @inicioExpediente time,
   @fimExpediente time,
   @inicioIntervalo time = null,
   @fimIntervalo time = null
AS
	UPDATE Agenda
		SET
           profissional_id = @profissional_id, 
           inicioExpediente = @inicioExpediente, 
           fimExpediente = @fimExpediente, 
           inicioIntervalo = @inicioIntervalo, 
           fimIntervalo = @fimIntervalo
	WHERE 
		diaDaSemana = @diaDaSemana
GO

