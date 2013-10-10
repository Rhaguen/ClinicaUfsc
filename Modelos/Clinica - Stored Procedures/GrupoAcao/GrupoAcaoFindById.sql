-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela GrupoAcao a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'GrupoAcaoFindById' 
)
   DROP PROCEDURE dbo.GrupoAcaoFindById
GO

CREATE PROCEDURE GrupoAcaoFindById
@grupo_id int

AS
	SELECT 
		grupo_id,
		acao_id
	FROM GrupoAcao
	WHERE
		grupo_id = @grupo_id
GO

