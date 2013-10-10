-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela ProfissionalEspecialidade
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'ProfissionalEspecialidadeList' 
)
   DROP PROCEDURE dbo.ProfissionalEspecialidadeList
GO

CREATE PROCEDURE ProfissionalEspecialidadeList
AS
	SELECT
		id,
		profissional_id,
		especialidade_id
	FROM ProfissionalEspecialidade
GO

