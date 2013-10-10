-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela Plano
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PlanoDelete' 
)
   DROP PROCEDURE dbo.PlanoDelete
GO

CREATE PROCEDURE PlanoDelete
@id int
AS
	DELETE FROM Plano
	WHERE 
		id = @id
GO

