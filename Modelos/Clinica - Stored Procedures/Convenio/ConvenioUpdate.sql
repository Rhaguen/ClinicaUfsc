-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela Convenio
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'ConvenioUpdate' 
)
   DROP PROCEDURE dbo.ConvenioUpdate
GO

CREATE PROCEDURE ConvenioUpdate
   @id int,
   @nome nvarchar
AS
	UPDATE Convenio
		SET
           nome = @nome
	WHERE 
		id = @id
GO

