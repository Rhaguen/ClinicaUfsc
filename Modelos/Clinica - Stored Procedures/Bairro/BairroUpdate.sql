-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela Bairro
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'BairroUpdate' 
)
   DROP PROCEDURE dbo.BairroUpdate
GO

CREATE PROCEDURE BairroUpdate
   @id int,
   @cidade_id int,
   @nome nvarchar
AS
	UPDATE Bairro
		SET
           cidade_id = @cidade_id, 
           nome = @nome
	WHERE 
		id = @id
GO

