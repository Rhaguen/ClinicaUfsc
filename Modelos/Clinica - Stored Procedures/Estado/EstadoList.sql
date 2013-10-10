-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela Estado
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'EstadoList' 
)
   DROP PROCEDURE dbo.EstadoList
GO

CREATE PROCEDURE EstadoList
AS
	SELECT
		id,
		uf,
		nome
	FROM Estado
GO

