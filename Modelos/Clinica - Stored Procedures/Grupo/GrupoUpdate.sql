-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela Grupo
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'GrupoUpdate' 
)
   DROP PROCEDURE dbo.GrupoUpdate
GO

CREATE PROCEDURE GrupoUpdate
   @id int,
   @nome nvarchar
AS
	UPDATE Grupo
		SET
           nome = @nome
	WHERE 
		id = @id
GO

