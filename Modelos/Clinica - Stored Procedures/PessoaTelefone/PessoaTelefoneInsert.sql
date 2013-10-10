-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela PessoaTelefone
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PessoaTelefoneInsert' 
)
   DROP PROCEDURE dbo.PessoaTelefoneInsert
GO

CREATE PROCEDURE PessoaTelefoneInsert
   @idTelefone int
AS
	INSERT INTO PessoaTelefone 
	(
       idTelefone
	) 
	VALUES
	(
       @idTelefone
	)
GO

