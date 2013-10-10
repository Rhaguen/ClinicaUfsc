-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela Convenio
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'ConvenioInsert' 
)
   DROP PROCEDURE dbo.ConvenioInsert
GO

CREATE PROCEDURE ConvenioInsert
   @nome nvarchar
AS
	INSERT INTO Convenio 
	(
       nome
	) 
	VALUES
	(
       @nome
	)
GO

