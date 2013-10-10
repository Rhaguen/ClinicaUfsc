-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela Estado
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'EstadoInsert' 
)
   DROP PROCEDURE dbo.EstadoInsert
GO

CREATE PROCEDURE EstadoInsert
   @uf char,
   @nome nvarchar
AS
	INSERT INTO Estado 
	(
       uf, 
       nome
	) 
	VALUES
	(
       @uf, 
       @nome
	)
GO

