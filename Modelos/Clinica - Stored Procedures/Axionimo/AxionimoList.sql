-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela Axionimo
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AxionimoList' 
)
   DROP PROCEDURE dbo.AxionimoList
GO

CREATE PROCEDURE AxionimoList
AS
	SELECT
		id,
		abreviacao,
		pronome
	FROM Axionimo
GO

