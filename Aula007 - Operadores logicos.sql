
/*
    ALL (SUBQUERY) = Compara um valor com todos os resultados de uma subquery, retornando verdadeiro se a condição for atendida por todos.
    AND = Combina duas condições e retorna verdadeiro somente se ambas forem verdadeiras.
    OR = Combina duas condições e retorna verdadeiro se pelo menos uma delas for verdadeira.
    SOME | ANY (SUBQUERY) = Retorna verdadeiro se o valor comparado atender a pelo menos um dos resultados retornados pela subquery.
    BETWEEN = Filtra valores que estejam dentro de um intervalo inclusivo (entre um valor inicial e um final).
    EXISTS (SUBQUERY) = Verifica se uma subquery retorna qualquer linha, sendo verdadeiro se houver pelo menos um resultado.
    IN | NOT IN = Verifica se um valor coincide (ou não) com qualquer elemento presente em uma lista ou subquery.
    LIKE | NOT LIKE = Compara um valor de texto com um padrão específico, usando caracteres curinga como % ou _.
*/

    -- Usando AND
    SELECT * FROM Person.Person
     WHERE BusinessEntityID > 150
       AND FirstName <> 'Lane'
       AND MiddleName <> 'Aaron'
     ORDER BY FirstName
    -- Só retorna valor se for TRUE, ou seja, se não existir nenhuma requisição no banco, não retornará nada

    -- ============================================================================================= --

    -- Usando OR
    SELECT * FROM Person.Person
     WHERE BusinessEntityID > 150
       AND ( FirstName = 'Lane' OR MiddleName <> 'G' OR LastName = 'Fib' )
     ORDER BY FirstName
    -- Retorna apenas os valores que são TRUE, caso nenhum seja, não retornará nada.

    -- ============================================================================================= --

    -- Usando BETWEEN
    SELECT * FROM Person.Person
     WHERE BusinessEntityID BETWEEN 600 AND 800
    -- Retorna um intervalo de dados indicados na sintaxe (600 entre 800 neste exemplo)

    -- ============================================================================================= --

    -- Usando IN | NOT IN
    SELECT * FROM Person.Person
     WHERE BusinessEntityID IN (1, 2 ,3 , 4, 659, 580, 900, 4500)
    -- Retorna o valor indicado em uma "lista" (...)

    -- Também pode ser passado parâmetros do tipo texto para buscar
    SELECT * FROM Person.Person
     WHERE FirstName NOT IN ('Ken', 'Gigi', 'Aaron')
     ORDER BY FirstName
    -- Neste exemplo o NOT IN exclui as opções em que não quer que retorne valor

    -- ============================================================================================= --

    -- Usando LIKE | NOT LIKE
    SELECT * FROM Person.Person
    -- WHERE FirstName LIKE 'G%'
     WHERE FirstName LIKE '[ABCDEFG]___a'
    -- [ABCDEFG] Indica quais caracteres podem ser considerados o primeiro.
    -- [^ABCDEFG] "^" é um sinal de negação, indicando qual você não quer que seja incluído na busca.
    -- O caracter "_" indica quantas letras quero que tenha na pesquisa.
    -- LIKE serve basicamente para buscar apenas dados com o padrão indicado.


