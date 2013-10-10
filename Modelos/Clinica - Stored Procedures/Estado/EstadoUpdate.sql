-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela Estado
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'EstadoUpdate' 
)
   DROP PROCEDURE dbo.EstadoUpdate
GO

CREATE PROCEDURE EstadoUpdate
   @id int,
   @uf char,
   @nome nvarchar
AS
	UPDATE Estado
		SET
           uf = @uf, 
           nome = @nome
	WHERE 
		id = @id
GO

