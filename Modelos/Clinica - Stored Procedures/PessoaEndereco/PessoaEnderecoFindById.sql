-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela PessoaEndereco a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PessoaEnderecoFindById' 
)
   DROP PROCEDURE dbo.PessoaEnderecoFindById
GO

CREATE PROCEDURE PessoaEnderecoFindById
@idPessoa int

AS
	SELECT 
		idPessoa,
		idLogradouro
	FROM PessoaEndereco
	WHERE
		idPessoa = @idPessoa
GO

