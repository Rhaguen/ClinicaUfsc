-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela Pessoa
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PessoaDelete' 
)
   DROP PROCEDURE dbo.PessoaDelete
GO

CREATE PROCEDURE PessoaDelete
@id int
AS
	DELETE FROM Pessoa
	WHERE 
		id = @id
GO

