-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela Cidade a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'CidadeFindById' 
)
   DROP PROCEDURE dbo.CidadeFindById
GO

CREATE PROCEDURE CidadeFindById
@id int

AS
	SELECT 
		id,
		nome,
		estado_id
	FROM Cidade
	WHERE
		id = @id
GO

