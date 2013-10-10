-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela PacientePlano
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PacientePlanoDelete' 
)
   DROP PROCEDURE dbo.PacientePlanoDelete
GO

CREATE PROCEDURE PacientePlanoDelete
@id int
AS
	DELETE FROM PacientePlano
	WHERE 
		id = @id
GO

