-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela Telefone a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'TelefoneFindById' 
)
   DROP PROCEDURE dbo.TelefoneFindById
GO

CREATE PROCEDURE TelefoneFindById
@id int

AS
	SELECT 
		id,
		codigoArea,
		numero,
		tipotelefone_id,
		pessoa_id
	FROM Telefone
	WHERE
		id = @id
GO

