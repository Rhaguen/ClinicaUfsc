-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela GrupoAcao
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'GrupoAcaoInsert' 
)
   DROP PROCEDURE dbo.GrupoAcaoInsert
GO

CREATE PROCEDURE GrupoAcaoInsert
   @acao_id int
AS
	INSERT INTO GrupoAcao 
	(
       acao_id
	) 
	VALUES
	(
       @acao_id
	)
GO

