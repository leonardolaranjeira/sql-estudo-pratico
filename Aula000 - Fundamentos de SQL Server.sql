
/*

    ESTE CONTEÚDO FAZ PARTE DA AULA 045 DO CURSO "BANCO DE DADOS BOLADÃO"
    TIPOS DE COMANDOS SQL | TIPOS DE INSTRUÇÕES EM SQL

    * DML - Data Manipulation Language (Linguagem de Manipulação de Dados)
        SELECT, UPDATE, DELETE, INSERT, MERGE, BULK INSERT

        DQL - Data Query Language (Linguagem de Consulta de Dados)
            SELECT

    * DDL - Data Definition Language (Linguagem de Definição de Dados)
        CREATE, ALTER, DROP, TRUNCATE, DISABLE TRIGGER, ENABLE TRIGGER, UPDATE STATISTICS

    * DCL - Data Control Language (Linguagem de Controle de Dados)
        GRANT, REVOKE, DENY

    * TCL - Transactional Control Language (Linguagem de Controle de Transação)
        BEGIN TRANSACTION, COMMIT, ROLLBACK
*/

/*

  ORDEM DE PROCESSAMENTO LÓGICO DA QUERY

  1. FROM
  2. WHERE
  3. GROUP BY
  4. HAVING
  5. SELECT
  6. ORDER BY
  7. OFFSET FETCH | TOP

*/

/*

    MAPEAMENTO MODELO LÓGICO - CARDINALIDADE

    1:N -> o lado 'N' recebe a FK (foreign key)
    1:1 -> união de tabelas
    N:N -> nova tabela

 */

/*

    NORMALIZAÇÃO

    Primeira forma normal (1FN)

    - Eliminar grupos repetidos em tabelas individuais.

    - Crie uma tabela separada para cada conjunto de dados relacionados.

    - Identifique cada conjunto de dados relacionados com uma chave primária.

    --==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--

    Segunda forma normal (2FN)

    - Estiver na 1FN;

    - Cada atributo não principal for dependente da chave primária inteira;

    - Se a tabela possui chave primária composta, se um atributo depende apenas de uma parte da chave primária,
      ele deve ser colocado em outra tabela;

    - Crie tabelas separadas para conjuntos de valores que se aplicam a vários registros;

    - Relacione essas tabelas com uma chave estrangeira.

     --==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--

    Terceira forma normal (3FN)

    - Estiver na 1FN e 2FN;

    - Nenhuma coluna não-chave depender de outra coluna não-chave.

 */
