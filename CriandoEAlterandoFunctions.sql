CREATE FUNCTION UDF_NomeIdade
(
    @BusinnesEnityID INT
)
RETURNS VARCHAR(250)
AS
BEGIN
    RETURN
    (
        SELECT DISTINCT
               p.FirstName + ' ' + p.MiddleName + '. ' + p.LastName + ', '
               + CAST(DATEDIFF(YEAR, e.BirthDate, GETDATE()) AS VARCHAR(2)) + ' anos'
        FROM Person.Person p
            INNER JOIN HumanResources.Employee e
                ON e.BusinessEntityID = p.BusinessEntityID
        WHERE p.BusinessEntityID = @BusinnesEnityID
    );

END;

ALTER FUNCTION UDF_NomeIdade
(
    @BusinnesEnityID INT
)
RETURNS VARCHAR(250)
AS
BEGIN
    RETURN
    (
        SELECT
               p.FirstName + ' ' + p.MiddleName + '. ' + p.LastName + ', '
               + CAST(DATEDIFF(YEAR, e.BirthDate, GETDATE()) AS VARCHAR(2)) + ' anos'
        FROM Person.Person p
            INNER JOIN HumanResources.Employee e
                ON e.BusinessEntityID = p.BusinessEntityID
        WHERE p.BusinessEntityID = @BusinnesEnityID
    );

END;


SELECT adventureworks2014.dbo.UDF_NomeIdade(40)