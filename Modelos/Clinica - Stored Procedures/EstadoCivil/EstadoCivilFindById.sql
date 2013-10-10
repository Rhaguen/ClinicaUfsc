-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela EstadoCivil a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'EstadoCivilFindById' 
)
   DROP PROCEDURE dbo.EstadoCivilFindById
GO

CREATE PROCEDURE EstadoCivilFindById
@id int

AS
	SELECT 
		id,
		descricao
	FROM EstadoCivil
	WHERE
		id = @id
GO

