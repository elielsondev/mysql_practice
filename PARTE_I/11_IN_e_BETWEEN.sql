-- Operador IN: Este operador serve para comparar se um valor é igual com um ou mais valores.
-- Ao invés de:
SELECT * FROM sakila.actor
    WHERE first_name = 'PENELOPE'
        OR first_name = 'NICK'
        OR first_name = 'ED'
        OR first_name = 'JENNIFER';

-- É o mesmo que:
SELECT * FROM sakila.actor
WHERE first_name IN ('PENELOPE', 'NICK', 'ED', 'JENNIFER');
-- OBS: Você pode fazer esse mesmo processo para números também, se for o caso.


-- Operador NOT IN: Este operador serve para comparar se um valor não é igual com um ou mais valores.
SELECT * FROM sakila.actor
WHERE first_name NOT IN ('PENELOPE', 'NICK', 'ED', 'JENNIFER');
-- OBS: Você pode fazer esse mesmo processo para números também, se for o caso.


-- Então, para que você faça pesquisas utilizando o IN, a sintaxe que deve ser usada é a seguinte:
SELECT * FROM nome_do_banco_de_dados.nome_da_tabela
WHERE nome_da_coluna IN ('valor1', 'valor2', 'valor3', 'valor4', 'valorN');
    -- ou também --
SELECT * FROM nome_do_banco_de_dados.nome_da_tabela
WHERE nome_da_coluna NOT IN ('valor1', 'valor2', 'valor3', 'valor4', 'valorN');


-- ________________________________________________________________________________________


-- Operador BETWEEN: Este operador serve para comparar se um valor está entre dois valores.
SELECT title, length FROM sakila.film
WHERE length BETWEEN 50 AND 120;
-- OBS: Note que o resultado inclui o valor inicial e o final nos resultados.


-- Usando o BETWEEN com datas:
SELECT rental_id, rental_date FROM sakila.rental
WHERE rental_date
BETWEEN '2005-05-27' AND '2005-07-17';