-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela GrupoAcao
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'GrupoAcaoDelete' 
)
   DROP PROCEDURE dbo.GrupoAcaoDelete
GO

CREATE PROCEDURE GrupoAcaoDelete
@grupo_id int
AS
	DELETE FROM GrupoAcao
	WHERE 
		grupo_id = @grupo_id
GO

