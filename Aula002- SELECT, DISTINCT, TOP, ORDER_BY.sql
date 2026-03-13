/* SQL - STRUCTURED QUERY LANGUAGE - LINGUAGEM DE CONSULTA ESTRUTURADA
-- T-SQL - TRANSACT SQL

   SELECT * FROM Person.Person

    SELECT = SELECIONE (Instrução SELECT)
    * (TUDO) = (TODAS AS COLUNAS)
    FROM = A PARTIR DE / VINDO DE
    NOME DA TABELA
   WHERE = ONDE (Filtro)
   AND = E
   ASC / DESC -- ORDENAÇÃO

   Boas práticas de escrita de sintaxe (Alinhar o final das instruções: SELECT, FROM, WHERE...)
   SELECT BusinessEntityID,
           PersonType,
           Title,
           FirstName,
           MiddleName,
           LastName,
           ModifiedDate -- Ultima coluna sem >virgula<
      FROM Person.Person
     WHERE FirstName = 'Ken'
       AND MiddleName = 'Chousa'
        AS - ALIASES = Apelido da coluna / Tabela
  DISTINCT = REMOVE DUPLICADOS
*/

/*
SELECT BusinessEntityID,
       PersonType,
       Title,
       FirstName,
       MiddleName,
       LastName,
       ModifiedDate -- Ultima coluna sem >virgula<

FROM Person.Person
WHERE FirstName = 'Ken'
  AND MiddleName = 'Chousa'
 */

    SELECT --TOP 1000 -- Trará os registros indicados no número
           BusinessEntityID AS [ID PESSOA],
           PersonType       AS [TIPO PESSOA],
           Title            AS [TITULO],
           FirstName        AS [PRIMEIRO NOME],
           MiddleName       AS [NOME DO MEIO],
           LastName         AS [ULTIMO NOME]

      FROM Person.Person
     WHERE Title = 'Mr.'
     ORDER BY [PRIMEIRO NOME],
             [ULTIMO NOME] DESC

    SELECT DISTINCT
           -- TOP 1000
           --BusinessEntityID AS [ID PESSOA],
           --PersonType       AS [TIPO PESSOA],
           --Title            AS [TITULO],
           FirstName,
           MiddleName,
           LastName

    FROM Person.Person
    WHERE Title = 'Mr.'
      AND MiddleName = 'M.'
   ORDER BY FirstName,
            MiddleName
