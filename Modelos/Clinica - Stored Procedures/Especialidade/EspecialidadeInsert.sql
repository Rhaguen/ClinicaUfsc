-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela Especialidade
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'EspecialidadeInsert' 
)
   DROP PROCEDURE dbo.EspecialidadeInsert
GO

CREATE PROCEDURE EspecialidadeInsert
   @nome nvarchar
AS
	INSERT INTO Especialidade 
	(
       nome
	) 
	VALUES
	(
       @nome
	)
GO

