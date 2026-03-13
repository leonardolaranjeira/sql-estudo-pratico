
 /* CROSS JOIN é usado para criar combinações diferentes entre duas tabelas... basicamente se usa em casos onde você quer
 identificar combinações e variações de algum dado. Ex: Um produto pode ter várias cores, tamanhos e modelos diferentes.*/

    USE AdventureWorks2025
    GO

    SELECT *
      FROM Sales.SalesPerson
     CROSS JOIN HumanResources.Employee
