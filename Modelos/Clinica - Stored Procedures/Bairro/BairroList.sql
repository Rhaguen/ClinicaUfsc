-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela Bairro
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'BairroList' 
)
   DROP PROCEDURE dbo.BairroList
GO

CREATE PROCEDURE BairroList
AS
	SELECT
		id,
		cidade_id,
		nome
	FROM Bairro
GO

