-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela PessoaEndereco
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PessoaEnderecoDelete' 
)
   DROP PROCEDURE dbo.PessoaEnderecoDelete
GO

CREATE PROCEDURE PessoaEnderecoDelete
@idPessoa int
AS
	DELETE FROM PessoaEndereco
	WHERE 
		idPessoa = @idPessoa
GO

