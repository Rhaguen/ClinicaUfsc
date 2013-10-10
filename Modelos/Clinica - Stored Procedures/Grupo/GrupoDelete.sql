-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela Grupo
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'GrupoDelete' 
)
   DROP PROCEDURE dbo.GrupoDelete
GO

CREATE PROCEDURE GrupoDelete
@id int
AS
	DELETE FROM Grupo
	WHERE 
		id = @id
GO

