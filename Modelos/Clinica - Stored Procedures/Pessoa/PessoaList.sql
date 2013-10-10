-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela Pessoa
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PessoaList' 
)
   DROP PROCEDURE dbo.PessoaList
GO

CREATE PROCEDURE PessoaList
AS
	SELECT
		id,
		nome,
		axionimo_id,
		estadocivil_id,
		rg,
		foto,
		cpf,
		nacionalidade,
		nascimento,
		sexo,
		usuario_id
	FROM Pessoa
GO

