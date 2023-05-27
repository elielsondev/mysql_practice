-- Condicionais

/*
  Em linguagens de alto nível, tais como: Python e JavaScript,
  as condicionais são a base para a criação de algoritmos dinâmicos
  que se adaptam de acordo com a necessidade do programa.
  
  Nesse quesito, o SQL não fica para trás, sendo também possível 
  usar nele os principais comandos de controle de fluxo, 
  como o IF e o CASE.
*/

-- Sintaxe IF:
SELECT IF(condicao, valor_se_verdadeiro, valor_se_falso);

--  Exemplos utilizando o banco sakila:

-- SELECT first_name, active FROM sakila.customer;

SELECT first_name, IF(active, 'Cliente Ativo', 'Cliente Inativo')
AS status_client
FROM sakila.customer;

-- SELECT title, rental_rate FROM sakila.film;

SELECT title, rental_rate, if(rental_rate > 0.99, 'Caro', 'Barato')
AS valor
FROM sakila.film;


-- Sintaxe CASE:

-- Exemplo simples:
SELECT CASE
  WHEN condicao THEN valor
  ELSE valor_padrao
END;

-- Exemplo composto:
SELECT
    nome,
    nivel_acesso,
    CASE
        WHEN nivel_acesso = 1 THEN 'Nível de acesso 1'
        WHEN nivel_acesso = 2 THEN 'Nível de acesso 2'
        WHEN nivel_acesso = 3 THEN 'Nível de acesso 3'
        ELSE 'Usuário sem acesso'
    END AS nivel_acesso
FROM permissoes_usuario;


-- Exemplo utilizando a tabela sakila.film:

-- SELECT first_name, email FROM sakila.customer;

SELECT
    first_name,
    email,
    CASE
        WHEN email = 'MARY.SMITH@sakilacustomer.org' THEN 'Cliente de baixo valor'
        WHEN email = 'PATRICIA.JOHNSON@sakilacustomer.org' THEN 'Cliente de médio valor'
        WHEN email = 'LINDA.WILLIAMS@sakilacustomer.org' THEN 'Cliente de alto valor'
        ELSE 'não classificado'
    END AS valor
FROM sakila.customer
LIMIT 10;

-- SELECT title, rental_rate FROM sakila.film;

SELECT title, rental_rate,
  CASE
    WHEN rental_rate = 0.99 THEN 'BARATO'
    WHEN rental_rate = 2.99 THEN 'MÉDIO'
    WHEN rental_rate = 4.99 THEN 'CARO'
  ELSE 'NÃO CLASSIFICADO'
END AS valor
FROM sakila.film
LIMIT 10;

/*
  É melhor aprender esse tema praticando, então vamos fazer isso.

Para fixar:
Usando o IF na tabela sakila.film, exiba o id do filme, o título e
uma coluna extra chamada ‘conheço o filme?’, em que deve-se avaliar
se o nome do filme é ‘ACE GOLDFINGER‘. 

Caso seja, exiba “Já assisti a esse filme”. Caso contrário, exiba “Não conheço o filme”.
Não esqueça de usar um alias para renomear a coluna da condicional.

Usando o CASE na tabela sakila.film, exiba o título, a classificação indicativa (rating)
e uma coluna extra que vamos chamar de ‘público-alvo’ em que colocaremos a classificação
do filme de acordo com as seguintes siglas:

    G: “Livre para todos”;
    PG: “Não recomendado para menores de 10 anos”;
    PG-13: “Não recomendado para menores de 13 anos”;
    R: “Não recomendado para menores de 17 anos”;

Se não cair em nenhuma das classificações anteriores: “Proibido para menores de idade”.
*/
