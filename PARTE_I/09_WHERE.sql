-- Aprender a lidar com o WHERE e
-- com os principais comparadores lógicos:

/* OPERADOR - DESCRIÇÃO
      =        Igual
      <>       Diferente de
      >        Maior
      <        Menor
      >=       Maior ou igual
      <=       Menor ou igual
      AND      Operador lógico E
      OR       Operador lógico OU
      IS       Compara com valores booleanos (TRUE, FALSE, NULL)
      NOT      Negação
*/

-- WHERE - especificando resultados:

-- Selecione todos os atores da tabela actor, onde o last_name é igual a ‘DAVIS’:
SELECT * FROM sakila.actor WHERE last_name = 'Davis';

-- Selecione a tabela actor, onde o actor_id é igual a 4:
SELECT * FROM sakila.actor WHERE actor_id = 4;

-- Selecione a tabela film, onde o length seja maior que 50:
SELECT * FROM sakila.film WHERE length > 50;


-- Selecione a tabela film, onde o length seja maior que 50 e coloque em ordem crescente pelo length:
SELECT * FROM sakila.film WHERE length > 50 ORDER BY length;
-- ou --
SELECT * FROM sakila.film WHERE length > 50 ORDER BY length ASC;

-- Selecione a tabela film, onde o title seja diferente de ‘ACADEMY DINOSAUR’:
-- Antes:
SELECT * FROM sakila.film;

-- Depois:
SELECT * FROM sakila.film WHERE title <> 'ACADEMY DINOSAUR';


-- Selecione a tabela film, onde o title seja diferente de ‘ACADEMY DINOSAUR’ e
-- rental_rate maior que 2.99:
SELECT * FROM sakila.film WHERE title <> 'ACADEMY DINOSAUR' AND rental_rate > 2.99;

-- Podemos fazer vários tipos com o WHERE, porém damos alguns exemplos para se ter uma base.

/* 
Além da informação passada, é importante relembrar a precedência dos operadores.
     - Parênteses
     - Multiplicação, Divisão
     - Subtração, Adição
     - NOT
     - AND
     - OR
*/
