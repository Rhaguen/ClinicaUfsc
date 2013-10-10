-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela PessoaTelefone
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PessoaTelefoneUpdate' 
)
   DROP PROCEDURE dbo.PessoaTelefoneUpdate
GO

CREATE PROCEDURE PessoaTelefoneUpdate
   @idPessoa int,
   @idTelefone int
AS
	UPDATE PessoaTelefone
		SET
           idTelefone = @idTelefone
	WHERE 
		idPessoa = @idPessoa
GO

