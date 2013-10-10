-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela Telefone
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'TelefoneInsert' 
)
   DROP PROCEDURE dbo.TelefoneInsert
GO

CREATE PROCEDURE TelefoneInsert
   @codigoArea int,
   @numero int,
   @tipotelefone_id int = null,
   @pessoa_id int
AS
	INSERT INTO Telefone 
	(
       codigoArea, 
       numero, 
       tipotelefone_id, 
       pessoa_id
	) 
	VALUES
	(
       @codigoArea, 
       @numero, 
       @tipotelefone_id, 
       @pessoa_id
	)
GO

