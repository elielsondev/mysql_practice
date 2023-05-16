-- Sintaxe para acessar uma tabela:

-- SELECT nome_da_coluna FROM nome_do_banco.nome_da_tabela;
	-- ou
-- USE nome_do_banco;
-- SELECT nome_da_coluna FROM nome_da_tabela;

-- Exemplo:
SELECT first_name FROM sakila.actor;

-- ou

USE sakila;
SELECT first_name FROM actor;
