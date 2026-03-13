
SELECT -- TOP 10
    BusinessEntityID,
    PersonType,
    Title,
    FirstName,
    MiddleName,
    LastName,
    ModifiedDate

FROM Person.Person
--WHERE MiddleName = 'N'
ORDER BY BusinessEntityID
OFFSET 50 ROWS -- Ignore (Pular) quantidade de linhas (ROWS - Linhas)
    FETCH NEXT 10 ROWS ONLY -- Execute as próximas 10 linhas somente


SELECT DISTINCT
           BusinessEntityID,
           --PersonType,
           --Title,
           FirstName,
           --MiddleName,
           LastName
           --ModifiedDate

      FROM Person.Person
      --WHERE MiddleName = 'N'
      ORDER BY LastName
      -- ORDER BY 4,5,6 (Selecionando colunas pelo "index") -> Evite fazer isso
     OFFSET 50 ROWS -- Ignore (Pular) quantidade de linhas (ROWS - Linhas)
      FETCH NEXT 10 ROWS ONLY -- Execute as próximas 10 linhas somente
