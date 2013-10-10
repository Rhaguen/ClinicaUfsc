-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela Profissional
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'ProfissionalUpdate' 
)
   DROP PROCEDURE dbo.ProfissionalUpdate
GO

CREATE PROCEDURE ProfissionalUpdate
   @id int,
   @crm nvarchar,
   @tipo smallint,
   @pessoa_id int
AS
	UPDATE Profissional
		SET
           crm = @crm, 
           tipo = @tipo, 
           pessoa_id = @pessoa_id
	WHERE 
		id = @id
GO

