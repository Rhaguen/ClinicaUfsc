-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela TipoLogradouro
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'TipoLogradouroDelete' 
)
   DROP PROCEDURE dbo.TipoLogradouroDelete
GO

CREATE PROCEDURE TipoLogradouroDelete
@id int
AS
	DELETE FROM TipoLogradouro
	WHERE 
		id = @id
GO

