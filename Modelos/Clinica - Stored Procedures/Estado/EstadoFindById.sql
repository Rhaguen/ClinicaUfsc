-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela Estado a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'EstadoFindById' 
)
   DROP PROCEDURE dbo.EstadoFindById
GO

CREATE PROCEDURE EstadoFindById
@id int

AS
	SELECT 
		id,
		uf,
		nome
	FROM Estado
	WHERE
		id = @id
GO

