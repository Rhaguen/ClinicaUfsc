-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela Profissional a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'ProfissionalFindById' 
)
   DROP PROCEDURE dbo.ProfissionalFindById
GO

CREATE PROCEDURE ProfissionalFindById
@id int

AS
	SELECT 
		id,
		crm,
		tipo,
		pessoa_id
	FROM Profissional
	WHERE
		id = @id
GO

