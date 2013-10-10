-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela Especialidade
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'EspecialidadeUpdate' 
)
   DROP PROCEDURE dbo.EspecialidadeUpdate
GO

CREATE PROCEDURE EspecialidadeUpdate
   @id int,
   @nome nvarchar
AS
	UPDATE Especialidade
		SET
           nome = @nome
	WHERE 
		id = @id
GO

