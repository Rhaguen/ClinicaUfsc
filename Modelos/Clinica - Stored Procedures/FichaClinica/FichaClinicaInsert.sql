-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela FichaClinica
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'FichaClinicaInsert' 
)
   DROP PROCEDURE dbo.FichaClinicaInsert
GO

CREATE PROCEDURE FichaClinicaInsert
   @avaliacao text = null,
   @agendamento_id int = null
AS
	INSERT INTO FichaClinica 
	(
       avaliacao, 
       agendamento_id
	) 
	VALUES
	(
       @avaliacao, 
       @agendamento_id
	)
GO

