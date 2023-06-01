-- Exibindo e filtrando dados de forma agrupada com GROUP BY e HAVING

/*
Os resultados de uma query podem ser agrupados por uma ou mais
colunas usando o GROUP BY, o que faz com que todos os registros que
têm o mesmo valor para tais colunas sejam exibidos juntos.

O GROUP BY também pode ser usado em conjunto com as funções de
agregação que vimos anteriormente.
*/

-- O GROUP BY pode ser construído da seguinte forma:
-- Sintaxe:
SELECT coluna(s) FROM tabela
GROUP BY coluna(s);

SELECT first_name FROM sakila.actor
GROUP BY first_name;

SELECT first_name FROM sakila.actor;

/*
  Como dito, o GROUP BY removerá duplicações, retornando apenas um valor da coluna usada no agrupamento.

  Porém, é mais comum utilizar o GROUP BY em conjunto com o AVG, MIN, MAX, SUM ou COUNT.
  Por exemplo, caso queiramos saber quantos registros existem na tabela de cada nome registrado,
  podemos usar o COUNT(). Assim, teremos uma informação mais fácil de ser compreendida.
*/

SELECT first_name, COUNT(*) FROM sakila.actor
GROUP BY first_name;

-- Também podemos utilizar o GROUP BY para agrupar os registros pelos valores de mais de uma coluna.
SELECT rating, rental_rate, COUNT(1) as total FROM sakila.film
GROUP BY rating, rental_rate 
ORDER BY rating, rental_rate;

/*
  No exemplo acima, estamos usando a tabela film do banco sakila.
  
  A coluna rating nos mostra a classificação por idade do filme.
  
  A coluna rental_rating informa o valor do aluguel do filme
  separado/agrupado pela classificação. Além disso, inserimos
  uma função ORDER BY para facilitar a visualização dos resultados.

  Agora vamos explorar como utilizar o GROUP BY em conjunto com as
  diversas funções de agregação que foram estudadas até aqui, por
  meio de alguns exemplos feitos com o nosso banco de dados sakila.
*/

-- Média de duração de filmes agrupados por classificação indicativa
SELECT rating, AVG(length)
FROM sakila.film
GROUP BY rating;

-- Valor mínimo de substituição dos filmes agrupados por classificação indicativa
SELECT rating, MIN(replacement_cost)
FROM sakila.film
GROUP BY rating;

-- Valor máximo de substituição dos filmes agrupados por classificação indicativa
SELECT rating, MAX(replacement_cost)
FROM sakila.film
GROUP BY rating;

-- Custo total de substituição de filmes agrupados por classificação indicativa
SELECT rating, SUM(replacement_cost)
FROM sakila.film
GROUP by rating;

/*
Praticando GROUP BY:
    1 - Monte uma query que exiba a quantidade de clientes cadastrados
    na tabela sakila.customer que estão ativos e a quantidade que estão inativos.

    2 - Monte uma query para a tabela sakila.customer que exiba a quantidade
    de clientes ativos e inativos por loja. Os resultados devem conter o ID
    da loja, o status dos clientes (ativos ou inativos) e a quantidade de
    clientes por status.

    3 - Monte uma query que exiba a média de duração de locação por classificação
    indicativa (rating) dos filmes cadastrados na tabela sakila.film.
    Os resultados devem ser agrupados pela classificação indicativa e ordenados
    da maior média para a menor.

    4 - Monte uma query para a tabela sakila.address que exiba o nome do distrito
    e a quantidade de endereços registrados nele. Os resultados devem ser ordenados
    da maior quantidade para a menor.
*/
