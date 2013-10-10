-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela Plano a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PlanoFindById' 
)
   DROP PROCEDURE dbo.PlanoFindById
GO

CREATE PROCEDURE PlanoFindById
@id int

AS
	SELECT 
		id,
		codigo,
		nome,
		diasParaFatura,
		convenio_id,
		valorConsulta
	FROM Plano
	WHERE
		id = @id
GO

