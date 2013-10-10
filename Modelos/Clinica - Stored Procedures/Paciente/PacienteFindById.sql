-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela Paciente a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PacienteFindById' 
)
   DROP PROCEDURE dbo.PacienteFindById
GO

CREATE PROCEDURE PacienteFindById
@id int

AS
	SELECT 
		id,
		pessoa_id
	FROM Paciente
	WHERE
		id = @id
GO

