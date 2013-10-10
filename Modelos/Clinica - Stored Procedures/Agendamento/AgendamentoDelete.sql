-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela Agendamento
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AgendamentoDelete' 
)
   DROP PROCEDURE dbo.AgendamentoDelete
GO

CREATE PROCEDURE AgendamentoDelete
@id int
AS
	DELETE FROM Agendamento
	WHERE 
		id = @id
GO

