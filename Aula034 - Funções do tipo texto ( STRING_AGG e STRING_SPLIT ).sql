
/*
    STRING_AGG (Nome_da_coluna/expressao, separador) : retorno será um varchar
    STRING_SPLIT (Expressao, separador) : retorno será uma tabela de uma única coluna
*/

    SELECT
        STRING_AGG( TRY_CAST(BusinessEntityID AS VARCHAR(MAX) ), '/' ) AS DevDojo,
        LastName
    FROM Person.Person
    GROUP BY LastName
    GO


    SELECT value AS DevDojo
    FROM STRING_SPLIT('William Suane grande mestre Jedi do DevDojo', ' ')


    SELECT 'william suane grande mestre jedi do devdojo' AS DevDojo

    /*
     EXERCÍCIO
        Deixar todas as primeiras letras da expressão 'william suane grande mestre jedi do devdojo' em maiúscula.
     */
    SELECT
           STRING_AGG( UPPER( LEFT( value , 1 ) ) + SUBSTRING( value, 2, LEN( value ) ), ' ' ) AS DevDojo
      FROM STRING_SPLIT( 'william suane grande mestre jedi do devdojo brabo demais', ' ' )

    /*
     Resolução do professor: Fabricio Chousa
     */
    SELECT --value,
           --LEFT(value, 1) AS [1L],
           --UPPER( LEFT(value, 1) ) AS [1LU],
           --RIGHT(value, LEN(value)-1 ) AS [ALL_RIGHT],
           STRING_AGG( CONCAT( UPPER( LEFT(value, 1) ), RIGHT(value, LEN(value)-1) ), ' ' ) AS DevDojo
      FROM STRING_SPLIT('william suane grande mestre jedi do devdojo', ' ')
