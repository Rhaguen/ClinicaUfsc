-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela TipoTelefone
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'TipoTelefoneList' 
)
   DROP PROCEDURE dbo.TipoTelefoneList
GO

CREATE PROCEDURE TipoTelefoneList
AS
	SELECT
		id,
		descricao,
		observacao
	FROM TipoTelefone
GO

