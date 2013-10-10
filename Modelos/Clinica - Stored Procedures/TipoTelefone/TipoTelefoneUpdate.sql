-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela TipoTelefone
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'TipoTelefoneUpdate' 
)
   DROP PROCEDURE dbo.TipoTelefoneUpdate
GO

CREATE PROCEDURE TipoTelefoneUpdate
   @id int,
   @descricao nvarchar,
   @observacao nvarchar = null
AS
	UPDATE TipoTelefone
		SET
           descricao = @descricao, 
           observacao = @observacao
	WHERE 
		id = @id
GO

