-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela Paciente
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PacienteInsert' 
)
   DROP PROCEDURE dbo.PacienteInsert
GO

CREATE PROCEDURE PacienteInsert
   @pessoa_id int = null
AS
	INSERT INTO Paciente 
	(
       pessoa_id
	) 
	VALUES
	(
       @pessoa_id
	)
GO

