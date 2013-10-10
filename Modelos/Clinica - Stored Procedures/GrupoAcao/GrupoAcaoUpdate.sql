-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela GrupoAcao
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'GrupoAcaoUpdate' 
)
   DROP PROCEDURE dbo.GrupoAcaoUpdate
GO

CREATE PROCEDURE GrupoAcaoUpdate
   @grupo_id int,
   @acao_id int
AS
	UPDATE GrupoAcao
		SET
           acao_id = @acao_id
	WHERE 
		grupo_id = @grupo_id
GO

