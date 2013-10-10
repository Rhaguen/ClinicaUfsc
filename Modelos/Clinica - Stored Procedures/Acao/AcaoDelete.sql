-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela Acao
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AcaoDelete' 
)
   DROP PROCEDURE dbo.AcaoDelete
GO

CREATE PROCEDURE AcaoDelete
@id int
AS
	DELETE FROM Acao
	WHERE 
		id = @id
GO

