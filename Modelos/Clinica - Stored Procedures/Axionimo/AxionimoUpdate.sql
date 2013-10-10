-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que atualiza um registro da tabela Axionimo
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'AxionimoUpdate' 
)
   DROP PROCEDURE dbo.AxionimoUpdate
GO

CREATE PROCEDURE AxionimoUpdate
   @id int,
   @abreviacao nvarchar,
   @pronome nvarchar
AS
	UPDATE Axionimo
		SET
           abreviacao = @abreviacao, 
           pronome = @pronome
	WHERE 
		id = @id
GO

