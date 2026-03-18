/*
    DATEPART(Parte da data / hora, Data / Nome da colune): Retorno será do tipo inteiro
    DATENAME(Parte da data / hora, Data / Nome da colune): Retorno será do tipo texto (nvarchar)
    ISDATE(Nome_da_coluna): retorno 1 = TRUE | 0 = FALSE
*/

SELECT
    -- 1. Pega a data e hora atuais do sistema (precisão padrão).
    GETDATE() AS [GETDATE()],

    -- 2. Pega a data e hora atuais com precisão muito maior (nanosegundos).
    SYSDATETIME() AS [SYSDATETIME()],

    -- 3. DATEPART: Extrai apenas a HORA da data atual como um número inteiro.
    DATEPART(HOUR, GETDATE()) AS HORA,

    -- 4. Extrai apenas o MINUTO da data atual.
    DATEPART(MINUTE, GETDATE()) AS MINUTO,

    -- 5. Extrai apenas o ANO da data atual.
    DATEPART(YEAR, GETDATE()) AS ANO,

    -- 6. Forma simplificada de pegar apenas o ANO (atalho para o DATEPART).
    YEAR(GETDATE()) AS ANOSOZINHO,

    -- 7. Forma simplificada de pegar apenas o MÊS.
    MONTH(GETDATE()) AS MESSOZINHO,

    -- 8. Forma simplificada de pegar apenas o DIA.
    DAY(GETDATE()) AS DIASOZINHO,

    -- 9. Extrai MICROSEGUNDOS (precisa usar SYSDATETIME, pois o GETDATE não tem essa precisão).
    DATEPART(MICROSECOND, SYSDATETIME()) AS [MICROSECOND],

    -- 10. Extrai NANOSEGUNDOS (nível máximo de detalhe do SQL Server).
    DATEPART(NANOSECOND, SYSDATETIME()) AS NANO,

    -- 11. DATENAME: Diferente do DATEPART, este retorna o NOME do mês (ex: 'Março') em vez do número.
    DATENAME(MONTH, GETDATE()) AS NOME_DO_MES,

    -- 12. Retorna o nome correspondente ao dia (pode variar conforme o idioma do servidor).
    DATENAME(DAY, GETDATE()) AS DIA_DO_MES
    GO

    SELECT
        -- 1. Seleciona colunas comuns de identificação e nome.
        BusinessEntityID,
        Title,
        FirstName,
        MiddleName,
        LastName,

        -- 2. Converte a coluna 'ModifiedDate' (que costuma ter data e hora) para APENAS data.
        -- O TRY_CAST evita erros se houver algum dado corrompido.
        TRY_CAST(ModifiedDate AS DATE) AS ModifiedDate,

        -- 3. Extrai apenas o valor numérico do ANO da coluna 'ModifiedDate'.
        DATEPART(YEAR, ModifiedDate) AS ANO

    -- 4. Indica a tabela de origem: esquema 'Person', tabela 'Person'.
    FROM Person.Person

    -- 5. FILTRO: Aqui é onde a mágica acontece.
    -- Só serão retornadas linhas onde o ANO da modificação seja igual a 2018.
    WHERE DATEPART(YEAR, ModifiedDate) = 2018

      -- 6. FILTRO ADICIONAL: Além de ser em 2018, o MÊS deve ser exatamente 'Dezembro'.
      -- Note o uso do DATENAME para comparar com o nome do mês em texto.
      AND DATENAME(MONTH, ModifiedDate) = 'Dezembro'

    -- 7. Comando para o SQL Server executar o bloco de instruções acima.
    GO

    SELECT BusinessEntityID,
           Title,
           FirstName,
           MiddleName,
           LastName,
           TRY_CAST(ModifiedDate AS DATE) AS ModifiedDate,
           DATEPART(YEAR, ModifiedDate) AS ANO,
           ISDATE(ModifiedDate) AS VERIFICADATA,
           TRY_CONVERT( VARCHAR(10), ModifiedDate, 103) AS data_formatada,
           ISDATE( TRY_CONVERT( VARCHAR(10), ModifiedDate, 103) ) AS VERIFICADATA2
      FROM Person.Person
     WHERE DATEPART(YEAR, ModifiedDate) = 2018
       --AND DATENAME(MONTH, ModifiedDate) = 'Dezembro'
    GO
