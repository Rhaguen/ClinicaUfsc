-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela Bairro a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'BairroFindById' 
)
   DROP PROCEDURE dbo.BairroFindById
GO

CREATE PROCEDURE BairroFindById
@id int

AS
	SELECT 
		id,
		cidade_id,
		nome
	FROM Bairro
	WHERE
		id = @id
GO

