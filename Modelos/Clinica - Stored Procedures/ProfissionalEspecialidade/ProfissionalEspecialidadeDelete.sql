-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela ProfissionalEspecialidade
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'ProfissionalEspecialidadeDelete' 
)
   DROP PROCEDURE dbo.ProfissionalEspecialidadeDelete
GO

CREATE PROCEDURE ProfissionalEspecialidadeDelete
@id int
AS
	DELETE FROM ProfissionalEspecialidade
	WHERE 
		id = @id
GO

