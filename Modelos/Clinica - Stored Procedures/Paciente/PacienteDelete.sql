-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela Paciente
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PacienteDelete' 
)
   DROP PROCEDURE dbo.PacienteDelete
GO

CREATE PROCEDURE PacienteDelete
@id int
AS
	DELETE FROM Paciente
	WHERE 
		id = @id
GO

