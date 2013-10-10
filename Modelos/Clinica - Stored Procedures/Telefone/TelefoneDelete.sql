-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela Telefone
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'TelefoneDelete' 
)
   DROP PROCEDURE dbo.TelefoneDelete
GO

CREATE PROCEDURE TelefoneDelete
@id int
AS
	DELETE FROM Telefone
	WHERE 
		id = @id
GO

