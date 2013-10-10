-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela Bairro
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'BairroDelete' 
)
   DROP PROCEDURE dbo.BairroDelete
GO

CREATE PROCEDURE BairroDelete
@id int
AS
	DELETE FROM Bairro
	WHERE 
		id = @id
GO

