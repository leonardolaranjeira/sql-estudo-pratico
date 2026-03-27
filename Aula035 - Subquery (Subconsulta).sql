
    SELECT DevDojo.BusinessEntityID,
           ( SELECT TOP 1 FirstName FROM Person.Person AS PP
             WHERE PP.BusinessEntityID = DevDojo.BusinessEntityID ) AS [Primeiro Nome],
           PEA.EmailAddress,
           DevDojo.LoginID,
           DevDojo.OrganizationLevel,
           DevDojo.[Titulo do trabalho],
           DevDojo.BirthDate,
           DevDojo.[Dif em dias],
           DevDojo.MaritalStatus,
           CASE
               WHEN Gender = 'F' THEN 'Feminino'
               WHEN Gender = 'M' THEN 'Masculino'
               ELSE 'Não Informado'
            END AS [GENERO],
           DevDojo.HireDate,
           DevDojo.[Ano Contratacao],
           DevDojo.VacationHours,
           DevDojo.SickLeaveHours,
           DevDojo.ModifiedDate
    FROM (
             SELECT BusinessEntityID,
                    -- NationalIDNumber,
                    LoginID,
                    OrganizationLevel,
                    JobTitle AS [Titulo do trabalho],
                    BirthDate,

                    DATEDIFF(DAY, BirthDate, GETDATE() ) AS [Dif em dias],

                    MaritalStatus,
                    Gender,
                    HireDate,
                    YEAR(HireDate) AS [Ano Contratacao],
                    VacationHours,
                    SickLeaveHours,
                    TRY_CAST(ModifiedDate AS DATE) AS ModifiedDate
             FROM HumanResources.Employee AS HRE
         ) AS DevDojo
    JOIN Person.EmailAddress AS PEA
      ON DevDojo.BusinessEntityID = PEA.BusinessEntityID

    -- WHERE [Ano Contratacao] = 2009
    -- ORDER BY BirthDate

    SELECT * FROM HumanResources.Employee
    -- WHERE BirthDate IN ( SELECT MIN(BirthDate) FROM HumanResources.Employee )
    WHERE HireDate IN ( SELECT MAX(HireDate) FROM HumanResources.Employee )

    --=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--

    SELECT ISNULL( ( SELECT TOP 1 PhoneNumber FROM Person.PersonPhone AS PPP
                     WHERE PPP.BusinessEntityID = PP.BusinessEntityID ), '') AS [PhoneNumber],

           HRE.*

    FROM Person.Person AS PP -- + 19 mil linhas
             JOIN HumanResources.Employee AS HRE -- 290
                  ON PP.BusinessEntityID = HRE.BusinessEntityID
