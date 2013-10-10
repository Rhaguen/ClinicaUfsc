-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela TipoLogradouro a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'TipoLogradouroFindById' 
)
   DROP PROCEDURE dbo.TipoLogradouroFindById
GO

CREATE PROCEDURE TipoLogradouroFindById
@id int

AS
	SELECT 
		id,
		tipo
	FROM TipoLogradouro
	WHERE
		id = @id
GO

