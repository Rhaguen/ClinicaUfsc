-- =============================================
-- Author:		Eduardo Getassi da Rosa
-- Project:		Clinica
-- Create date: 10/10/2013
-- Description:	Stored Procedure que deleta um registro da tabela Logradouro
-- =============================================

IF EXISTS 
(
	SELECT * 
		FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE 
		SPECIFIC_SCHEMA = 'dbo' AND
		SPECIFIC_NAME = 'LogradouroDelete' 
)
   DROP PROCEDURE dbo.LogradouroDelete
GO

CREATE PROCEDURE LogradouroDelete

	Campo campo = projeto.Tabelas.Find(p => p.Nome.Equals(projeto.Tabela)).Campos.Find(p => Convert.ToBoolean(p.ChavePrimaria) == true);
	return String.Concat("@", campo.Nome, " ", campo.Tipo);

AS
	DELETE FROM Logradouro
	WHERE 

	Campo campo = projeto.Tabelas.Find(p => p.Nome.Equals(projeto.Tabela)).Campos.Find(p => Convert.ToBoolean(p.ChavePrimaria) == true);
	return String.Concat("		", campo.Nome, " = @", campo.Nome);

GO

