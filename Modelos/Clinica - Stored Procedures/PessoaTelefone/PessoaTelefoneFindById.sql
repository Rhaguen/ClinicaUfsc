-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela PessoaTelefone a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PessoaTelefoneFindById' 
)
   DROP PROCEDURE dbo.PessoaTelefoneFindById
GO

CREATE PROCEDURE PessoaTelefoneFindById
@idPessoa int

AS
	SELECT 
		idPessoa,
		idTelefone
	FROM PessoaTelefone
	WHERE
		idPessoa = @idPessoa
GO

