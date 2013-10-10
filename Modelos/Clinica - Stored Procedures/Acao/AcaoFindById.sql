-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela Acao a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AcaoFindById' 
)
   DROP PROCEDURE dbo.AcaoFindById
GO

CREATE PROCEDURE AcaoFindById
@id int

AS
	SELECT 
		id,
		nome,
		acao
	FROM Acao
	WHERE
		id = @id
GO

