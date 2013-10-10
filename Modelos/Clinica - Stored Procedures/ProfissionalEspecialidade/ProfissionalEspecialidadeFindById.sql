-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela ProfissionalEspecialidade a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'ProfissionalEspecialidadeFindById' 
)
   DROP PROCEDURE dbo.ProfissionalEspecialidadeFindById
GO

CREATE PROCEDURE ProfissionalEspecialidadeFindById
@id int

AS
	SELECT 
		id,
		profissional_id,
		especialidade_id
	FROM ProfissionalEspecialidade
	WHERE
		id = @id
GO

