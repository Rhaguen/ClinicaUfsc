-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela EstadoCivil
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'EstadoCivilDelete' 
)
   DROP PROCEDURE dbo.EstadoCivilDelete
GO

CREATE PROCEDURE EstadoCivilDelete
@id int
AS
	DELETE FROM EstadoCivil
	WHERE 
		id = @id
GO

