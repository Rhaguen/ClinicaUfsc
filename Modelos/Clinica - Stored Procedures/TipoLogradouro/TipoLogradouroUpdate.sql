-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela TipoLogradouro
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'TipoLogradouroUpdate' 
)
   DROP PROCEDURE dbo.TipoLogradouroUpdate
GO

CREATE PROCEDURE TipoLogradouroUpdate
   @id int,
   @tipo nvarchar
AS
	UPDATE TipoLogradouro
		SET
           tipo = @tipo
	WHERE 
		id = @id
GO

