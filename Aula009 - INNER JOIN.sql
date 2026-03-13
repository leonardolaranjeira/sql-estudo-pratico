
/*
    INNER JOIN = JOIN (O SQL interpreta ambas sintaxes como a mesma coisa.)
 */

     SELECT PP.BusinessEntityID,
            Title,
            MiddleName,
            LastName,
            EmailAddress,
            PEA.BusinessEntityID,
            PPP.PhoneNumber

       FROM Person.Person AS PP
      INNER JOIN Person.EmailAddress AS PEA
         ON PP.BusinessEntityID = PEA.BusinessEntityID
       JOIN Person.PersonPhone AS PPP
         ON PEA.BusinessEntityID = PPP.BusinessEntityID
