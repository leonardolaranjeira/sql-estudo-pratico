/* SQL - STRUCTURED QUERY LANGUAGE - LINGUAGEM DE CONSULTA ESTRUTURADA
-- T-SQL - TRANSACT SQL

   SELECT * FROM Person.Person

    SELECT = SELECIONE (Instrução SELECT)
    * (TUDO) = (TODAS AS COLUNAS)
    FROM = A PARTIR DE / VINDO DE
    NOME DA TABELA
   WHERE = ONDE
   AMD = E

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
*/

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
