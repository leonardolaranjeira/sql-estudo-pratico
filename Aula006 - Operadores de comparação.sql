
/*
    OPERADORES DE COMPARAÇÃO (PADRÃO ANSII: Podem ser usados em outros SGBD's)
    = (Igual a)
    <> (Diferente de)
    < (menor que)
    > (maior que)
    >= (Maior ou igual a)
    <= (Menor ou igual a)

    != [Não é padrão ISO]
    !< (Não é menor que) [Não é padrão ISO]
    !> (Não é maior que) [Não é padrão ISO]
 */

/* Use a sintaxe abaixo para praticar o uso de operadores de comparação */

    SELECT * FROM Person.Person
     WHERE BusinessEntityID !> 10
