
/*
    LEFT JOIN = Mescla dados de ambas tabelas sendo a principal a primeira tabela chamada.
 */

    USE AdventureWorks2025
     GO

    SELECT PP.BusinessEntityID AS [PP.BusinessEntityID],
           HRE.BusinessEntityID AS [HRE.BusinessEntityID],
           FirstName,
           MiddleName,
           LastName,
           LoginID,
           JobTitle,
           BirthDate

    FROM Person.Person AS PP -- 19.972
    LEFT JOIN HumanResources.Employee AS HRE -- 290
      ON PP.BusinessEntityID = HRE.BusinessEntityID
    ORDER BY PP.BusinessEntityID
