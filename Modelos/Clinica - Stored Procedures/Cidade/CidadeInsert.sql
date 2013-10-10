-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela Cidade
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'CidadeInsert' 
)
   DROP PROCEDURE dbo.CidadeInsert
GO

CREATE PROCEDURE CidadeInsert
   @nome nvarchar,
   @estado_id int
AS
	INSERT INTO Cidade 
	(
       nome, 
       estado_id
	) 
	VALUES
	(
       @nome, 
       @estado_id
	)
GO

