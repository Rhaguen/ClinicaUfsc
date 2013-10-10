-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela Cidade
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'CidadeUpdate' 
)
   DROP PROCEDURE dbo.CidadeUpdate
GO

CREATE PROCEDURE CidadeUpdate
   @id int,
   @nome nvarchar,
   @estado_id int
AS
	UPDATE Cidade
		SET
           nome = @nome, 
           estado_id = @estado_id
	WHERE 
		id = @id
GO

