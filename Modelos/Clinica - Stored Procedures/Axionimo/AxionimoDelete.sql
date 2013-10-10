-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela Axionimo
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AxionimoDelete' 
)
   DROP PROCEDURE dbo.AxionimoDelete
GO

CREATE PROCEDURE AxionimoDelete
@id int
AS
	DELETE FROM Axionimo
	WHERE 
		id = @id
GO

