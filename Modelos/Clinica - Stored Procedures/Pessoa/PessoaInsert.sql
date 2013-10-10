-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela Pessoa
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PessoaInsert' 
)
   DROP PROCEDURE dbo.PessoaInsert
GO

CREATE PROCEDURE PessoaInsert
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
	INSERT INTO Pessoa 
	(
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
	) 
	VALUES
	(
       @nome, 
       @axionimo_id, 
       @estadocivil_id, 
       @rg, 
       @foto, 
       @cpf, 
       @nacionalidade, 
       @nascimento, 
       @sexo, 
       @usuario_id
	)
GO

