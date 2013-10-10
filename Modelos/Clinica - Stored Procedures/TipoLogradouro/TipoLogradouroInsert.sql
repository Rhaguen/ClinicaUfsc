-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela TipoLogradouro
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'TipoLogradouroInsert' 
)
   DROP PROCEDURE dbo.TipoLogradouroInsert
GO

CREATE PROCEDURE TipoLogradouroInsert
   @tipo nvarchar
AS
	INSERT INTO TipoLogradouro 
	(
       tipo
	) 
	VALUES
	(
       @tipo
	)
GO

