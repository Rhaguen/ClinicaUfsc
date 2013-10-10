-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela Plano
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PlanoUpdate' 
)
   DROP PROCEDURE dbo.PlanoUpdate
GO

CREATE PROCEDURE PlanoUpdate
   @id int,
   @codigo nvarchar = null,
   @nome nvarchar,
   @diasParaFatura int,
   @convenio_id int,
   @valorConsulta numeric
AS
	UPDATE Plano
		SET
           codigo = @codigo, 
           nome = @nome, 
           diasParaFatura = @diasParaFatura, 
           convenio_id = @convenio_id, 
           valorConsulta = @valorConsulta
	WHERE 
		id = @id
GO

