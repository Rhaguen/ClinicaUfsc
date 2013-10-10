-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela Usuario
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'UsuarioUpdate' 
)
   DROP PROCEDURE dbo.UsuarioUpdate
GO

CREATE PROCEDURE UsuarioUpdate
   @id int,
   @login nvarchar,
   @senha nvarchar,
   @grupo_id int
AS
	UPDATE Usuario
		SET
           login = @login, 
           senha = @senha, 
           grupo_id = @grupo_id
	WHERE 
		id = @id
GO

