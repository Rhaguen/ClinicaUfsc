-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela PessoaEndereco
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PessoaEnderecoInsert' 
)
   DROP PROCEDURE dbo.PessoaEnderecoInsert
GO

CREATE PROCEDURE PessoaEnderecoInsert
   @idLogradouro int
AS
	INSERT INTO PessoaEndereco 
	(
       idLogradouro
	) 
	VALUES
	(
       @idLogradouro
	)
GO

