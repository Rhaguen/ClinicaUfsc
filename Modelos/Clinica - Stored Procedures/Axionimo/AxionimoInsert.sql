-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que insere um registro da tabela Axionimo
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AxionimoInsert' 
)
   DROP PROCEDURE dbo.AxionimoInsert
GO

CREATE PROCEDURE AxionimoInsert
   @abreviacao nvarchar,
   @pronome nvarchar
AS
	INSERT INTO Axionimo 
	(
       abreviacao, 
       pronome
	) 
	VALUES
	(
       @abreviacao, 
       @pronome
	)
GO

