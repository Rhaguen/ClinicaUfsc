-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela FichaClinica
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'FichaClinicaUpdate' 
)
   DROP PROCEDURE dbo.FichaClinicaUpdate
GO

CREATE PROCEDURE FichaClinicaUpdate
   @id int,
   @avaliacao text = null,
   @agendamento_id int = null
AS
	UPDATE FichaClinica
		SET
           avaliacao = @avaliacao, 
           agendamento_id = @agendamento_id
	WHERE 
		id = @id
GO

