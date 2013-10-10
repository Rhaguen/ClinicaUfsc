-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela Profissional
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'ProfissionalDelete' 
)
   DROP PROCEDURE dbo.ProfissionalDelete
GO

CREATE PROCEDURE ProfissionalDelete
@id int
AS
	DELETE FROM Profissional
	WHERE 
		id = @id
GO

