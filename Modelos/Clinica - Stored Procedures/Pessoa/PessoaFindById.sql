-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela Pessoa a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PessoaFindById' 
)
   DROP PROCEDURE dbo.PessoaFindById
GO

CREATE PROCEDURE PessoaFindById
@id int

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
	WHERE
		id = @id
GO

