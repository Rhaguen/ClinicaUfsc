-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela EstadoCivil
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'EstadoCivilInsert' 
)
   DROP PROCEDURE dbo.EstadoCivilInsert
GO

CREATE PROCEDURE EstadoCivilInsert
   @descricao nvarchar
AS
	INSERT INTO EstadoCivil 
	(
       descricao
	) 
	VALUES
	(
       @descricao
	)
GO

