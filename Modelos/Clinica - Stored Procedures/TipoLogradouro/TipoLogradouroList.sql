-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela TipoLogradouro
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'TipoLogradouroList' 
)
   DROP PROCEDURE dbo.TipoLogradouroList
GO

CREATE PROCEDURE TipoLogradouroList
AS
	SELECT
		id,
		tipo
	FROM TipoLogradouro
GO

