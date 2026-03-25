
/*
    TRANSLATE(Expression/Nome_da_Coluna, 'expressão a ser trocada', pelo que você irá substituir)
    STR(numero, comprimento_total, casas_decimais) : converte um número para string (texto)
        - comprimento_total: o tamanho final da string (incluindo espaços à esquerda e o ponto decimal)
        - casas_decimais: a quantidade de números após o ponto
*/

    SELECT REPLACE('A Melhor seleção do mundo é o Brasil?', 'ç', 'c') AS DevDojo,
           TRANSLATE('A melhor seleção do mundo é o Brasil?', 'çã é ?', 'ca e !') AS [TRANSLATE]
    GO

    SELECT BusinessEntityID,
           TRY_CAST(RateChangeDate AS DATE) AS RateChangeDate,
           Rate,
           TRY_CAST(Rate AS VARCHAR(10)) AS rate2,
           STR(Rate, 30, 4) AS [STR],
           PayFrequency
    FROM HumanResources.EmployeePayHistory
    GO
