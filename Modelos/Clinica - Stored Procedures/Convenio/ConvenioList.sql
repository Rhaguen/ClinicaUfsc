-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela Convenio
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'ConvenioList' 
)
   DROP PROCEDURE dbo.ConvenioList
GO

CREATE PROCEDURE ConvenioList
AS
	SELECT
		id,
		nome
	FROM Convenio
GO

