-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela Acao
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AcaoInsert' 
)
   DROP PROCEDURE dbo.AcaoInsert
GO

CREATE PROCEDURE AcaoInsert
   @nome nvarchar = null,
   @acao nvarchar = null
AS
	INSERT INTO Acao 
	(
       nome, 
       acao
	) 
	VALUES
	(
       @nome, 
       @acao
	)
GO

