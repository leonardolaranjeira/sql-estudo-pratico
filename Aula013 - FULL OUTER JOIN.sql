
    SELECT PP.BusinessEntityID,
           SSP.BusinessEntityID,
           Title,
           FirstName,
           MiddleName,
           LastName,
           TerritoryID,
           PEA.EmailAddress,
           PEA.BusinessEntityID,
           HRE.BusinessEntityID,
           HRE.Gender,
           HRE.LoginID
      FROM Person.Person AS PP
      -- FULL JOIN Person.EmailAddress AS PEA
      FULL OUTER JOIN Person.EmailAddress AS PEA
        ON PP.BusinessEntityID = PEA.BusinessEntityID

      FULL OUTER JOIN HumanResources.Employee AS HRE
        ON PEA.BusinessEntityID = HRE.BusinessEntityID

      FULL OUTER JOIN Sales.SalesPerson AS SSP
        ON HRE.BusinessEntityID = PEA.BusinessEntityID
