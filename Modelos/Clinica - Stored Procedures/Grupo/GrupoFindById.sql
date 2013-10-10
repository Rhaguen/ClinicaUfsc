-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela Grupo a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'GrupoFindById' 
)
   DROP PROCEDURE dbo.GrupoFindById
GO

CREATE PROCEDURE GrupoFindById
@id int

AS
	SELECT 
		id,
		nome
	FROM Grupo
	WHERE
		id = @id
GO

