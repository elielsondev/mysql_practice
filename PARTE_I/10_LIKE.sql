-- LIKE - criando pesquisas mais dinâmicas:

-- % O sinal de percentual, que pode representar zero, um ou múltiplos caracteres.
-- _ O underscore, que representa um único caractere.

-- Veja alguns exemplos de busca abaixo:

-- Encontra qualquer resultado finalizando com ‘don’:
SELECT * FROM sakila.film WHERE title LIKE '%don';

-- Encontra qualquer resultado iniciando com ‘plu’:
SELECT * FROM sakila.film WHERE title LIKE 'plu%';

-- Encontra qualquer resultado que contem ‘plu’:
SELECT * FROM sakila.film WHERE title LIKE '%plu%';

-- Encontra qualquer resultado que inicie com ‘p’ e termine com ‘r’:
SELECT * FROM sakila.film WHERE title LIKE 'p%r';

-- Encontra qualquer resultado onde o segundo caractere seja ‘C’:
SELECT * FROM sakila.film WHERE title LIKE '_C%';

-- Encontra qualquer resultado em que o titulo possua
-- exatamente o número de ‘_’ inseridos, que nesse exemplo foram 8:
SELECT * FROM sakila.film WHERE title LIKE '________';

-- Encontra todas as palavras com no mínimo 3 caracteres e que inicie com ‘E’:
SELECT * FROM sakila.film WHERE title LIKE 'E__%';
