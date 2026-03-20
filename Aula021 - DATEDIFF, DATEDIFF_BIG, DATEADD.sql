
USE AdventureWorks2025
SET LANGUAGE Brazilian
GO

/*
    DATEDIFF(PARTE_DA_DATA, PRIMEIRA_DATA, SEGUNDA_DATA) : RETORNO SERÁ TIPO INT
    DATEDIFF_BIG(PARTE_DA_DATA, PRIMEIRA_DATA, SEGUNDA_DATA) : RETORNO SERÁ TIPO BIGINT
    DATEADD(PARTE_DA_DATA, VALOR, DATA/Nome_da_Coluna)
*/

    SELECT GETDATE() AS HOJE,
           DATEDIFF(DAY, '1991-04-12', GETDATE()) AS DIFF_DIAS,
           DATEDIFF(HOUR, '1991-04-12 01:58:34', GETDATE()) AS HORAS,
           DATEDIFF_BIG(NANOSECOND, '1991-04-12 01:58:34', SYSDATETIME()) AS PRECISAO
    GO

    SELECT BusinessEntityID,
           Title,
           FirstName,

           -- DATEDIFF(unidade, data_inicio, data_fim)
           -- Calcula a diferença de MESES entre a ModifiedDate e a data de hoje.
           DATEDIFF(MONTH, ModifiedDate, GETDATE()) AS DIF_MESES,

           -- Calcula a diferença de ANOS entre a ModifiedDate e hoje.
           DATEDIFF(YEAR, ModifiedDate, GETDATE()) AS DIF_ANO,

           -- Calcula a diferença de DIAS entre a ModifiedDate e hoje.
           DATEDIFF(DAY, ModifiedDate, GETDATE()) AS DIF_DAY,

           ModifiedDate,

           -- Retorna o nome do mês da data de modificação.
           DATENAME(MONTH, ModifiedDate) AS NOME_DO_MES,

           -- DATEADD(unidade, quantidade, data)
           -- Adiciona 3 meses à ModifiedDate e depois extrai o NOME do mês resultante.
           DATENAME(MONTH, (DATEADD(MONTH, 3, ModifiedDate)) ) AS MESES_ACRESCIDOS,
           DATEADD(MONTH, -3, ModifiedDate) AS MESES_SUB

    FROM Person.Person
    WHERE ModifiedDate >= DATEADD( YEAR, -7, GETDATE() )
    GO


    SELECT BusinessEntityID,
           Title,
           FirstName,
           DATEDIFF(MONTH, ModifiedDate, GETDATE()) AS DIF_MESES,
           DATEDIFF(YEAR, ModifiedDate, GETDATE()) AS DIF_ANO,
           DATEDIFF(DAY, ModifiedDate, GETDATE()) AS DIF_DAY,
           ModifiedDate,
           DATENAME(MONTH, ModifiedDate) AS NOME_DO_MES,
           DATENAME(MONTH, (DATEADD(MONTH, 3, ModifiedDate)) ) AS MESES_ACRESCIDOS,
           DATEADD(MONTH, -3, ModifiedDate) AS MESES_SUB
    FROM Person.Person
                                            -- SUBSELECT
    WHERE ModifiedDate >= DATEADD( MONTH, -16, ( SELECT MAX(ModifiedDate) FROM Person.Person ) )
    GO

    SELECT DATEDIFF( MONTH, (SELECT MIN(ModifiedDate) FROM Person.Person), (SELECT MAX(ModifiedDate) FROM Person.Person) )
