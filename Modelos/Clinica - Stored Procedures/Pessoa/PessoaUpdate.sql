-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela Pessoa
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PessoaUpdate' 
)
   DROP PROCEDURE dbo.PessoaUpdate
GO

CREATE PROCEDURE PessoaUpdate
   @id int,
   @nome nvarchar,
   @axionimo_id int,
   @estadocivil_id int,
   @rg nvarchar = null,
   @foto varbinary = null,
   @cpf nvarchar = null,
   @nacionalidade nvarchar = null,
   @nascimento date,
   @sexo bit,
   @usuario_id int
AS
	UPDATE Pessoa
		SET
           nome = @nome, 
           axionimo_id = @axionimo_id, 
           estadocivil_id = @estadocivil_id, 
           rg = @rg, 
           foto = @foto, 
           cpf = @cpf, 
           nacionalidade = @nacionalidade, 
           nascimento = @nascimento, 
           sexo = @sexo, 
           usuario_id = @usuario_id
	WHERE 
		id = @id
GO

