CREATE FUNCTION UDF_DadosCompletosFuncionario()
RETURNS @Retorno TABLE(
	NomeCompleto VARCHAR(70),
	Idade INT,
	Nascimento DATE,
	Sexo VARCHAR(1),
	TempoDeEmpresa INT,
	Cargo VARCHAR(40)
)
AS BEGIN
INSERT INTO @Retorno
SELECT
p.FirstName + ' ' + ISNULL(p.MiddleName, '' )+ '. ' + p.LastName AS NomeCompleto,
DATEDIFF(YEAR, e.BirthDate, GETDATE()) AS Idade,
e.BirthDate AS DataNascimento, e.Gender AS Sexo, 
DATEDIFF(YEAR, e.HireDate, GETDATE()) AS AnosdeEmpresa
, e.JobTitle AS Cargo
FROM Person.Person p  
            INNER JOIN HumanResources.Employee e  
                ON e.BusinessEntityID = p.BusinessEntityID
	RETURN
END

SELECT NomeCompleto FROM AdventureWorks2014.DBO.UDF_DadosCompletosFuncionario()