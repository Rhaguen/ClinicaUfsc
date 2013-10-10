-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela EstadoCivil
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'EstadoCivilList' 
)
   DROP PROCEDURE dbo.EstadoCivilList
GO

CREATE PROCEDURE EstadoCivilList
AS
	SELECT
		id,
		descricao
	FROM EstadoCivil
GO

