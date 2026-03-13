
/*
    RIGHT JOIN = Mescla dados de ambas tabelas (O resultado é da tabela left, mas os dados são prioritários da tabela right.)
 */

    USE AdventureWorks2025
     GO

    SELECT SSP.BusinessEntityID AS [SSP.BusinessEntityID],
            PP.BusinessEntityID AS [PP.BusinessEntityID],
            TerritoryID,
            SalesQuota,
            Bonus,
            SalesLastYear,
            FirstName,
            MiddleName,
            LastName,
            EmailAddress

      FROM Sales.SalesPerson AS SSP
      JOIN Person.Person AS PP
        ON SSP.BusinessEntityID = PP.BusinessEntityID
      JOIN Person.EmailAddress AS PEA
        ON PEA.BusinessEntityID = PP.BusinessEntityID
    ORDER BY SSP.BusinessEntityID,
             PP.BusinessEntityID
