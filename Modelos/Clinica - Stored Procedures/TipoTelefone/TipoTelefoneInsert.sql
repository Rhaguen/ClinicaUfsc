-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela TipoTelefone
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'TipoTelefoneInsert' 
)
   DROP PROCEDURE dbo.TipoTelefoneInsert
GO

CREATE PROCEDURE TipoTelefoneInsert
   @descricao nvarchar,
   @observacao nvarchar = null
AS
	INSERT INTO TipoTelefone 
	(
       descricao, 
       observacao
	) 
	VALUES
	(
       @descricao, 
       @observacao
	)
GO

