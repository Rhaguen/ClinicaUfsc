-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela ProfissionalEspecialidade
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'ProfissionalEspecialidadeUpdate' 
)
   DROP PROCEDURE dbo.ProfissionalEspecialidadeUpdate
GO

CREATE PROCEDURE ProfissionalEspecialidadeUpdate
   @id int,
   @profissional_id int,
   @especialidade_id int
AS
	UPDATE ProfissionalEspecialidade
		SET
           profissional_id = @profissional_id, 
           especialidade_id = @especialidade_id
	WHERE 
		id = @id
GO

