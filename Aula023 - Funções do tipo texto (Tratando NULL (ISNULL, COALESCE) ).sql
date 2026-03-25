
USE AdventureWorks2025
GO

/*
    ISNULL(Nome_da_coluna/Valor, ValorParaSubstituir/Dado)
    COALESCE(Argumento[Nome_da_coluna]) : quantos argumentos desejar
*/

-- SELECT ISNULL(NULL, '')

SELECT BusinessEntityID,
       PersonType,
       NameStyle,
       Title,
       ISNULL(Title, '') AS Title ,
       FirstName,
       ISNULL(MiddleName, '') AS MiddleName,
       COALESCE( Title, MiddleName, Suffix, FirstName ) AS [COALESCE()],
       ISNULL( COALESCE(Title, MiddleName, Suffix), 'NULO' ) AS [COALESCE()_NULO],
       LastName,
       ISNULL(Suffix, '') AS Suffix,
       ISNULL(AdditionalContactInfo, '') AS AdicionalConcactInfo,
       TRY_CONVERT(VARCHAR(10), ModifiedDate, 103) AS ModifiedDate
FROM Person.Person
--WHERE AdditionalContactInfo IS NOT NULL
GO
