-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela TipoTelefone a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'TipoTelefoneFindById' 
)
   DROP PROCEDURE dbo.TipoTelefoneFindById
GO

CREATE PROCEDURE TipoTelefoneFindById
@id int

AS
	SELECT 
		id,
		descricao,
		observacao
	FROM TipoTelefone
	WHERE
		id = @id
GO

