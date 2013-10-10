-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela TipoTelefone
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'TipoTelefoneDelete' 
)
   DROP PROCEDURE dbo.TipoTelefoneDelete
GO

CREATE PROCEDURE TipoTelefoneDelete
@id int
AS
	DELETE FROM TipoTelefone
	WHERE 
		id = @id
GO

