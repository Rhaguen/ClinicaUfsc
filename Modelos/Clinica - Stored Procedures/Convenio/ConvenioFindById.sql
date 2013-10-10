-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela Convenio a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'ConvenioFindById' 
)
   DROP PROCEDURE dbo.ConvenioFindById
GO

CREATE PROCEDURE ConvenioFindById
@id int

AS
	SELECT 
		id,
		nome
	FROM Convenio
	WHERE
		id = @id
GO

