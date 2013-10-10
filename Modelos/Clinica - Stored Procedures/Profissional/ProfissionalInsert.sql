-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela Profissional
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'ProfissionalInsert' 
)
   DROP PROCEDURE dbo.ProfissionalInsert
GO

CREATE PROCEDURE ProfissionalInsert
   @crm nvarchar,
   @tipo smallint,
   @pessoa_id int
AS
	INSERT INTO Profissional 
	(
       crm, 
       tipo, 
       pessoa_id
	) 
	VALUES
	(
       @crm, 
       @tipo, 
       @pessoa_id
	)
GO

