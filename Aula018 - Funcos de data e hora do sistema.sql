
SELECT
    -- 1. Pega a data/hora atual e tenta extrair APENAS a hora. Se falhar, retorna NULL.
    TRY_CAST(GETDATE() AS TIME) AS [TIME],

    -- 2. Pega a data/hora atual e tenta extrair APENAS a data. Se falhar, retorna NULL.
    TRY_CAST(GETDATE() AS DATE) AS [DATE],

    -- 3. Função clássica do SQL Server que retorna a data e hora ATUAIS do servidor.
    GETDATE() AS [GETDATE()],

    -- 4. Equivalente ao GETDATE(), mas é uma palavra-chave padrão ANSI SQL.
    CURRENT_TIMESTAMP AS [CURRENT_TIMESTAMP],

    -- 5. Similar ao GETDATE(), mas com precisão de frações de segundo muito maior (nanosegundos).
    SYSDATETIME() AS [SYSDATETIME()],

    -- 6. Retorna a data e hora ATUAIS do servidor, mas convertidas para o fuso horário UTC (Greenwich).
    GETUTCDATE() AS [GETUTCDATE()],

    -- 7. É a versão de alta precisão do GETUTCDATE() (precisão de nanosegundos em UTC).
    SYSUTCDATETIME() AS [SYSUTCDATETIME()],

    -- 8. Retorna a data/hora atual de alta precisão, INCLUINDO o fuso horário do servidor.
    SYSDATETIMEOFFSET() AS [SYSDATETIMEOFFSET()],

    -- 9. Retorna o nome do fuso horário configurado no servidor (ex: 'E. South America Standard Time').
    CURRENT_TIMEZONE() AS [CURRENT_TIMEZONE()]
