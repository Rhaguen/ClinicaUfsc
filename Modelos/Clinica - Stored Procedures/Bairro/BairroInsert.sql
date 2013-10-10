-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela Bairro
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'BairroInsert' 
)
   DROP PROCEDURE dbo.BairroInsert
GO

CREATE PROCEDURE BairroInsert
   @cidade_id int,
   @nome nvarchar
AS
	INSERT INTO Bairro 
	(
       cidade_id, 
       nome
	) 
	VALUES
	(
       @cidade_id, 
       @nome
	)
GO

