
    USE AdventureWorks2025
     GO

/* =========================================================================
   FUNÇÕES DE DATA E CONVERSÃO DE TIPOS (T-SQL)
   =========================================================================

   DATA ATUAL:
   - GETDATE(): Retorna a data e hora atual do servidor.

   CONVERSÃO PADRÃO (ANSI):
   - CAST(valor AS tipo): Conversão simples e universal.
     Ex: CAST('10' AS INT)

   CONVERSÃO COM FORMATAÇÃO (SQL SERVER):
   - CONVERT(tipo, valor, style): Converte e permite formatar (especialmente datas).
     Ex: Style 103 = DD/MM/AAAA (Brasil)

   CONVERSÃO SEGURA (TRATAMENTO DE ERROS):
   - TRY_CAST / TRY_CONVERT: Tentam converter o dado.
     Se falhar, retornam NULL em vez de travar a query (Semelhante ao Try-Catch).
   =========================================================================
*/

    -- CAST de valores no tipo texto que estão sendo somados
    SELECT ( SELECT CAST('33' AS INT) ) + ( SELECT CAST('37' AS INT) ) AS RESULT

    -- Conversão de dado tipo Texto para "data"
    SELECT CAST('20010101' AS DATE)

    -- Padrão de data que se enquadra ao Brasil
    SELECT CONVERT(VARCHAR(10), GETDATE(), 103)

    -- CAST de valor no tipo texto que está sendo somado com + 6
    SELECT ( SELECT CONVERT(INT, '6526164') ) + 6

    -- Padrão de data diferente do brasileiro
    SELECT CONVERT(VARCHAR(25), GETDATE(), 113)

    -- Exemplos de consulta para busca de data
    SELECT  CONVERT(DATE, '14/02/2017', 101) AS COLUNA1, -- Este padrão da ERRO
            CONVERT(DATE, '02/14/2017', 101) AS COLUNA2

    -- Padrão mais usado por não retornar um erro substituindo o dado invalidado por NULL
    SELECT  TRY_CONVERT(DATE, '14/02/2017', 101) AS COLUNA1, -- Retorna o ERRO apenas como NULL
            TRY_CONVERT(DATE, '02/14/2017', 101) AS COLUNA2

    -- Conversão de valor inválido
    SELECT CAST('45F' AS SMALLMONEY) AS CONV -- Este modelo retorna um ERRO
    SELECT TRY_CAST('45F' AS SMALLMONEY) AS CONV

    -- Este modelo só da certo com a segunda linha pois o retorno da sintaxe é do tipo texto
    SELECT ( SELECT CAST(GETDATE() AS VARCHAR(25)) ) + 6 -- Este modelo retorna um ERRO
    SELECT ( SELECT CAST(GETDATE() AS VARCHAR(25)) ) + ' 6'

    -- Conversão de valor float
    SELECT TRY_CAST('6528.56' AS FLOAT)

    -- Conversão de valor inválido (TINYINT não suporta mais que 255 para conversão)
    SELECT CAST('256' AS TINYINT)
