-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela Telefone
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'TelefoneList' 
)
   DROP PROCEDURE dbo.TelefoneList
GO

CREATE PROCEDURE TelefoneList
AS
	SELECT
		id,
		codigoArea,
		numero,
		tipotelefone_id,
		pessoa_id
	FROM Telefone
GO

