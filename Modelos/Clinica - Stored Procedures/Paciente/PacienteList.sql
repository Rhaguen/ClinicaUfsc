-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela Paciente
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PacienteList' 
)
   DROP PROCEDURE dbo.PacienteList
GO

CREATE PROCEDURE PacienteList
AS
	SELECT
		id,
		pessoa_id
	FROM Paciente
GO

