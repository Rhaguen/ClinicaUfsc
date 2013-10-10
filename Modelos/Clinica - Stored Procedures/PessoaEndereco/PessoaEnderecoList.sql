-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela PessoaEndereco
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PessoaEnderecoList' 
)
   DROP PROCEDURE dbo.PessoaEnderecoList
GO

CREATE PROCEDURE PessoaEnderecoList
AS
	SELECT
		idPessoa,
		idLogradouro
	FROM PessoaEndereco
GO

