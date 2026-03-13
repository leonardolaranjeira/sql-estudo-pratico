
/*

COUNT: CONTAGEM

MIN: MINIMO

MAX: MAXIMO

SUM: SOMATORIO

AVG: MEDIA

*/

/* CONTA QUANTAS PESSOAS TÊM O MESMO NOME E NOME DO MEIO (IGNORA NOMES DO MEIO VAZIOS) */
SELECT COUNT(*) AS CONTADOR,
       FirstName,
       MiddleName
FROM Person.Person
WHERE MiddleName IS NOT NULL
GROUP BY FirstName,
         MiddleName

/* BUSCA O MENOR ID E A DATA MAIS ANTIGA DA TABELA */
SELECT MIN(BusinessEntityID) AS Minimo,
       MIN(ModifiedDate) AS [Data modificada min]
FROM Person.Person

/* BUSCA O MAIOR ID E A DATA MAIS RECENTE DA TABELA */
SELECT MAX(BusinessEntityID) AS Máximo,
       MAX(ModifiedDate) AS [Data modificada max]
FROM Person.Person

/* SOMA TODOS OS VALORES DE ID (RESULTADO MATEMÁTICO SEM VALOR LÓGICO, APENAS TESTE) */
SELECT SUM(BusinessEntityID) AS Soma
FROM Person.Person

/* MÉDIA DE SALÁRIO POR DATA, MOSTRANDO APENAS DATAS COM MÉDIA MENOR QUE 10.000 */
SELECT AVG(Rate) AS Rate,
       RateChangeDate
FROM HumanResources.EmployeePayHistory
GROUP BY RateChangeDate
HAVING AVG(Rate) < 10000

/* SOMA A COTA DE VENDAS DE CADA VENDEDOR, TRAZENDO O NOME DO MEIO DE OUTRA TABELA */
SELECT SSP.BusinessEntityID,
       MiddleName,
       SUM(SalesQuota) AS SalesQuota
FROM Sales.SalesPerson AS SSP
         JOIN Person.Person AS PP
              ON SSP.BusinessEntityID = PP.BusinessEntityID
GROUP BY SSP.BusinessEntityID,
         MiddleName

/* LISTA APENAS OS PRIMEIROS NOMES QUE SE REPETEM MAIS DE 20 VEZES NO BANCO */
SELECT COUNT(*) AS CONTADOR,
       FirstName
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(*) > 20

/* RESUMO COMPLETO (SOMA, MÍN, MÁX, TOTAL E MÉDIA) DOS SALÁRIOS DOS FUNCIONÁRIOS */
SELECT SUM(Rate) AS [IF],
       MIN(Rate) AS [MIN],
       MAX(Rate) AS [MAX],
       COUNT(Rate) AS [COUNT],
       AVG(Rate) AS [AVG]
FROM HumanResources.EmployeePayHistory
