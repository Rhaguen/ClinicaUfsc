-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela PessoaEndereco
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PessoaEnderecoUpdate' 
)
   DROP PROCEDURE dbo.PessoaEnderecoUpdate
GO

CREATE PROCEDURE PessoaEnderecoUpdate
   @idPessoa int,
   @idLogradouro int
AS
	UPDATE PessoaEndereco
		SET
           idLogradouro = @idLogradouro
	WHERE 
		idPessoa = @idPessoa
GO

