-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela Especialidade
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'EspecialidadeDelete' 
)
   DROP PROCEDURE dbo.EspecialidadeDelete
GO

CREATE PROCEDURE EspecialidadeDelete
@id int
AS
	DELETE FROM Especialidade
	WHERE 
		id = @id
GO

