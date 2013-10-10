-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que lista todos os registros da tabela FichaClinica
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'FichaClinicaList' 
)
   DROP PROCEDURE dbo.FichaClinicaList
GO

CREATE PROCEDURE FichaClinicaList
AS
	SELECT
		id,
		avaliacao,
		agendamento_id
	FROM FichaClinica
GO

