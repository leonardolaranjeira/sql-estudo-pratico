/*
    -- Boas práticas para executar e buscar dados do DB correto
    USE AdventureWorks2025
     GO

    SELECT * FROM Person.Person
     WHERE BusinessEntityID > 500
        GO
*/

    -- Comando para buscar informações sobre o DB solicitado
    SELECT * FROM INFORMATION_SCHEMA.TABLES
     -- WHERE TABLE_SCHEMA = 'Sales'

    -- Exemplo de uso com colunas
    SELECT * FROM INFORMATION_SCHEMA.COLUMNS
     WHERE TABLE_SCHEMA = 'Person'
       AND TABLE_NAME = 'Person'

    -- ================================================================================= --

    -- Padrão de pesquisa por informações do banco solicitado (dbo: Schema padrão)
    SELECT * FROM AdventureWorks2025.Sales.Store
    -- SELECT * FROM [NOME_DA_BASE].[NOME_DO_SCHEMA].[NOME_DA_TABELA]
