
USE AdventureWorks2025
GO

-- EOMONTH(DATA/Nome_da_coluna, [precisãoOpcional]) : retorno tipo 'date'
-- Esta função retorna o ÚLTIMO DIA do mês da data informada.

SELECT GETDATE() AS [GETDATE()],

       -- Retorna o último dia do mês atual
       EOMONTH( GETDATE() ) AS [EOMONTH],

       -- Retorna o último dia do mês de 4 meses atrás (valor negativo)
       EOMONTH( GETDATE(), -4 ) AS [NEG],

       -- Retorna o último dia de fevereiro de 2010 (detecta anos bissextos automaticamente)
       EOMONTH('2010-02-10') AS FEV,

       -- Pega a data de fev/2010 e pula 3 meses para frente, retornando o fim do mês de Maio
       EOMONTH('2010-02-10', 3) AS MES
GO

SELECT BusinessEntityID,
       FirstName,
       ModifiedDate,

       -- Calcula o fim do mês de 3 meses antes da data de modificação
       EOMONTH(ModifiedDate, -3) as [-3 Meses],

       -- Retorna o último dia do mês em que o registro foi modificado
       EOMONTH(ModifiedDate) AS ULTIMO_DIA_DO_MES,

       -- Calcula o fim do mês de 6 meses após a modificação
       EOMONTH(ModifiedDate, 6) AS [+6 Meses]
FROM Person.Person

-- DATEFROMPARTS(ANO, MES, DIA) [TODOS DO TIPO INTEIRO] : RETORNO SERÁ UM DATE
-- Monta uma data válida a partir de números inteiros separados.

SELECT DATEFROMPARTS('2015', '10', '7') -- Retorna a data 07/10/2015

-- TIMEFROMPARTS(HORA, MINUTO, SEGUNDO, FRACAO, PRECISAO): RETORNO SERA UM TIME
-- Monta um horário específico.
SELECT TIMEFROMPARTS(18, 30, 40, 0, 0)

-- DATETIMEFROMPARTS(ANO, MES, DIA, HORA, MINUTO, SEGUNDO, FRACAO)
-- Monta uma data e hora completa (tipo DATETIME).
SELECT DATETIMEFROMPARTS(1991, 4, 12, 1, 58, 30, 30)
