-- CONCAT - Juntando duas ou mais colunas:
   -- Antes dê uma pesquisada no sakila.actor: 
   SELECT * FROM sakila.actor;

-- Vamos unir o first_name com o last_name dos atores:
SELECT CONCAT(first_name, last_name) FROM sakila.actor;

-- O Resultado ficou estranho? Então tente a query a seguir:
SELECT CONCAT(first_name, ' ', last_name) FROM sakila.actor;

-- Muito melhor, certo? Mas dá pra melhorar:
SELECT CONCAT(first_name, ' ', last_name) AS 'Nome Completo' FROM sakila.actor;