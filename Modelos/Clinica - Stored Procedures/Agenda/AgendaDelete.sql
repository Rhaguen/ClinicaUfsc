-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela Agenda
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AgendaDelete' 
)
   DROP PROCEDURE dbo.AgendaDelete
GO

CREATE PROCEDURE AgendaDelete
@diaDaSemana tinyint
AS
	DELETE FROM Agenda
	WHERE 
		diaDaSemana = @diaDaSemana
GO

