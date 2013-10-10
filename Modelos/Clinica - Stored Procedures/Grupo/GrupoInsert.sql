-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela Grupo
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'GrupoInsert' 
)
   DROP PROCEDURE dbo.GrupoInsert
GO

CREATE PROCEDURE GrupoInsert
   @nome nvarchar
AS
	INSERT INTO Grupo 
	(
       nome
	) 
	VALUES
	(
       @nome
	)
GO

