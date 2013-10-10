-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela PacientePlano
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PacientePlanoInsert' 
)
   DROP PROCEDURE dbo.PacientePlanoInsert
GO

CREATE PROCEDURE PacientePlanoInsert
   @vencimento date = null,
   @matricula nvarchar = null,
   @paciente_id int,
   @plano_id int
AS
	INSERT INTO PacientePlano 
	(
       vencimento, 
       matricula, 
       paciente_id, 
       plano_id
	) 
	VALUES
	(
       @vencimento, 
       @matricula, 
       @paciente_id, 
       @plano_id
	)
GO

