-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela Convenio
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'ConvenioDelete' 
)
   DROP PROCEDURE dbo.ConvenioDelete
GO

CREATE PROCEDURE ConvenioDelete
@id int
AS
	DELETE FROM Convenio
	WHERE 
		id = @id
GO

