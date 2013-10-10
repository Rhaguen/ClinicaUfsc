-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela FichaClinica
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'FichaClinicaDelete' 
)
   DROP PROCEDURE dbo.FichaClinicaDelete
GO

CREATE PROCEDURE FichaClinicaDelete
@id int
AS
	DELETE FROM FichaClinica
	WHERE 
		id = @id
GO

