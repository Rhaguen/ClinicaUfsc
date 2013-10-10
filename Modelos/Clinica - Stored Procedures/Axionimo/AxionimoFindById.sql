-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela Axionimo a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AxionimoFindById' 
)
   DROP PROCEDURE dbo.AxionimoFindById
GO

CREATE PROCEDURE AxionimoFindById
@id int

AS
	SELECT 
		id,
		abreviacao,
		pronome
	FROM Axionimo
	WHERE
		id = @id
GO

