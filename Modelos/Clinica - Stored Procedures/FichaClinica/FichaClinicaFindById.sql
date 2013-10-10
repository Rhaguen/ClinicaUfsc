-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que consulta um registro da tabela FichaClinica a partir do id
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'FichaClinicaFindById' 
)
   DROP PROCEDURE dbo.FichaClinicaFindById
GO

CREATE PROCEDURE FichaClinicaFindById
@id int

AS
	SELECT 
		id,
		avaliacao,
		agendamento_id
	FROM FichaClinica
	WHERE
		id = @id
GO

