-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela ProfissionalEspecialidade
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'ProfissionalEspecialidadeInsert' 
)
   DROP PROCEDURE dbo.ProfissionalEspecialidadeInsert
GO

CREATE PROCEDURE ProfissionalEspecialidadeInsert
   @profissional_id int,
   @especialidade_id int
AS
	INSERT INTO ProfissionalEspecialidade 
	(
       profissional_id, 
       especialidade_id
	) 
	VALUES
	(
       @profissional_id, 
       @especialidade_id
	)
GO

