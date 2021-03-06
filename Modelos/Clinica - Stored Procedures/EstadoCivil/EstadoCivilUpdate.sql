-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela EstadoCivil
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'EstadoCivilUpdate' 
)
   DROP PROCEDURE dbo.EstadoCivilUpdate
GO

CREATE PROCEDURE EstadoCivilUpdate
   @id int,
   @descricao nvarchar
AS
	UPDATE EstadoCivil
		SET
           descricao = @descricao
	WHERE 
		id = @id
GO

