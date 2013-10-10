-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela PacientePlano
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PacientePlanoUpdate' 
)
   DROP PROCEDURE dbo.PacientePlanoUpdate
GO

CREATE PROCEDURE PacientePlanoUpdate
   @id int,
   @vencimento date = null,
   @matricula nvarchar = null,
   @paciente_id int,
   @plano_id int
AS
	UPDATE PacientePlano
		SET
           vencimento = @vencimento, 
           matricula = @matricula, 
           paciente_id = @paciente_id, 
           plano_id = @plano_id
	WHERE 
		id = @id
GO

