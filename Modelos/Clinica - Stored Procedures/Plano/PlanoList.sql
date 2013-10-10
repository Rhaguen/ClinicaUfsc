-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela Plano
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PlanoList' 
)
   DROP PROCEDURE dbo.PlanoList
GO

CREATE PROCEDURE PlanoList
AS
	SELECT
		id,
		codigo,
		nome,
		diasParaFatura,
		convenio_id,
		valorConsulta
	FROM Plano
GO

