-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela Telefone
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'TelefoneUpdate' 
)
   DROP PROCEDURE dbo.TelefoneUpdate
GO

CREATE PROCEDURE TelefoneUpdate
   @id int,
   @codigoArea int,
   @numero int,
   @tipotelefone_id int = null,
   @pessoa_id int
AS
	UPDATE Telefone
		SET
           codigoArea = @codigoArea, 
           numero = @numero, 
           tipotelefone_id = @tipotelefone_id, 
           pessoa_id = @pessoa_id
	WHERE 
		id = @id
GO

