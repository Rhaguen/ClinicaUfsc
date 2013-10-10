-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela Plano
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'PlanoInsert' 
)
   DROP PROCEDURE dbo.PlanoInsert
GO

CREATE PROCEDURE PlanoInsert
   @codigo nvarchar = null,
   @nome nvarchar,
   @diasParaFatura int,
   @convenio_id int,
   @valorConsulta numeric
AS
	INSERT INTO Plano 
	(
       codigo, 
       nome, 
       diasParaFatura, 
       convenio_id, 
       valorConsulta
	) 
	VALUES
	(
       @codigo, 
       @nome, 
       @diasParaFatura, 
       @convenio_id, 
       @valorConsulta
	)
GO

