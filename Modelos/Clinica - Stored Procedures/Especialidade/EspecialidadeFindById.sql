-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela Especialidade a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'EspecialidadeFindById' 
)
   DROP PROCEDURE dbo.EspecialidadeFindById
GO

CREATE PROCEDURE EspecialidadeFindById
@id int

AS
	SELECT 
		id,
		nome
	FROM Especialidade
	WHERE
		id = @id
GO

