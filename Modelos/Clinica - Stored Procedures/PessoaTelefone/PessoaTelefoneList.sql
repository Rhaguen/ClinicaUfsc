-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela PessoaTelefone
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PessoaTelefoneList' 
)
   DROP PROCEDURE dbo.PessoaTelefoneList
GO

CREATE PROCEDURE PessoaTelefoneList
AS
	SELECT
		idPessoa,
		idTelefone
	FROM PessoaTelefone
GO

