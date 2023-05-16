-- Se você abrir agora o nosso banco de dados sakila e executar a query a seguir, verá que o
-- resultado é 16044, ou seja, existem 16044 linhas na tabela rental.
SELECT COUNT(*) FROM sakila.rental;

/*
Isso não é sempre necessário e pode até ser um problema em bancos de dados gigantes, em que as
tabelas podem conter milhares ou milhões de linhas. Resolver isso é bem simples: tudo que você
precisa fazer é limitar o resultado usando o LIMIT:
*/


-- LIMIT - especificando a quantidade de resultados:
SELECT * FROM sakila.rental LIMIT 10;


-- LIMIT OFFSET - Pulando linhas desnecessárias:
-- Para pular uma certa quantidade de linhas do seu resultado, você pode usar o comando OFFSET.
SELECT * FROM sakila.rental LIMIT 10 OFFSET 3;