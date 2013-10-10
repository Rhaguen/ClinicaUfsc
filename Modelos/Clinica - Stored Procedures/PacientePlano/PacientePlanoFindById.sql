-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela PacientePlano a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PacientePlanoFindById' 
)
   DROP PROCEDURE dbo.PacientePlanoFindById
GO

CREATE PROCEDURE PacientePlanoFindById
@id int

AS
	SELECT 
		id,
		vencimento,
		matricula,
		paciente_id,
		plano_id
	FROM PacientePlano
	WHERE
		id = @id
GO

