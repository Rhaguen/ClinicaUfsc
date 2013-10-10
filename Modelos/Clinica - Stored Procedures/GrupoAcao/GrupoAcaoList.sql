-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela GrupoAcao
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'GrupoAcaoList' 
)
   DROP PROCEDURE dbo.GrupoAcaoList
GO

CREATE PROCEDURE GrupoAcaoList
AS
	SELECT
		grupo_id,
		acao_id
	FROM GrupoAcao
GO

