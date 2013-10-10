-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela Cidade
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'CidadeDelete' 
)
   DROP PROCEDURE dbo.CidadeDelete
GO

CREATE PROCEDURE CidadeDelete
@id int
AS
	DELETE FROM Cidade
	WHERE 
		id = @id
GO

