/*
 LEFT JOIN   Quando utilizamos o LEFT JOIN, focamos a tabela da esquerda.

 São retornados todos os registros da tabela da esquerda e valores
 correspondentes da tabela da direita, caso existam. 
 
 Valores que não possuem correspondentes são exibidos como nulos.
 */

SELECT
  c.customer_id,
  c.first_name,
  c.last_name,
  a.actor_id,
  a.first_name,
  a.last_name
FROM sakila.customer AS c
LEFT JOIN sakila.actor AS a
ON c.last_name = a.last_name
ORDER BY c.last_name;
