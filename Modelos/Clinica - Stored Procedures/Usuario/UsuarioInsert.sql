-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela Usuario
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'UsuarioInsert' 
)
   DROP PROCEDURE dbo.UsuarioInsert
GO

CREATE PROCEDURE UsuarioInsert
   @login nvarchar,
   @senha nvarchar,
   @grupo_id int
AS
	INSERT INTO Usuario 
	(
       login, 
       senha, 
       grupo_id
	) 
	VALUES
	(
       @login, 
       @senha, 
       @grupo_id
	)
GO

