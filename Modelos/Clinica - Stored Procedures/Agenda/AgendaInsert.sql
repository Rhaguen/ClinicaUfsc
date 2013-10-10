-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela Agenda
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AgendaInsert' 
)
   DROP PROCEDURE dbo.AgendaInsert
GO

CREATE PROCEDURE AgendaInsert
   @profissional_id int = null,
   @inicioExpediente time,
   @fimExpediente time,
   @inicioIntervalo time = null,
   @fimIntervalo time = null
AS
	INSERT INTO Agenda 
	(
       profissional_id, 
       inicioExpediente, 
       fimExpediente, 
       inicioIntervalo, 
       fimIntervalo
	) 
	VALUES
	(
       @profissional_id, 
       @inicioExpediente, 
       @fimExpediente, 
       @inicioIntervalo, 
       @fimIntervalo
	)
GO

