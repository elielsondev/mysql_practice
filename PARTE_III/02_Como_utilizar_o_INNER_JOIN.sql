-- COMO UTILIZAR UM 'INNER JOIN'?
/*
    O INNER JOIN é uma operação de junção que retorna apenas os registros com
    valores correspondentes em ambas as tabelas. Ele combina linhas e colunas
    das duas tabelas, baseando-se na relação entre elas.

    O INNER JOIN permite retornar todos os resultados em que a condição da
    cláusula ON for satisfeita.
    
    A sintaxe de um INNER JOIN é a seguinte:
*/

SELECT t1.nome_coluna, t2.nome_da_coluna
FROM tabela1 AS t1
INNER JOIN tabela2 AS t2
ON t1.coluna_em_comum = t2.coluna_em_comum;

-- Por que usamos o alias (AS)?
/*
    O alias AS é usado para apelidar qualquer parte da sua query.
    Isso ajuda o sistema de banco de dados a identificar a qual
    coluna estamos nos referindo, evitando erros de ambiguidade
    de nome de colunas, além de tornar suas queries mais concisas
    e legíveis.
    
    Por exemplo, observe as queries a seguir:
*/

-- Código sem alias:
SELECT sakila.actor.first_name, actor_id, sakila.film_actor.actor_id
FROM sakila.actor
INNER JOIN sakila.film_actor
ON sakila.actor.actor_id = sakila.film_actor.actor_id;

/*
    O código acima, além de ser muito extenso, não permite que o banco de dados
    descubra de qual tabela deve trazer o actor_id, uma vez que ambas as tabelas,
    actor e film_actor, possuem uma coluna actor_id.
*/

-- Código com alias:
SELECT t1.first_name, t1.actor_id, t2.actor_id
FROM sakila.actor AS t1
INNER JOIN sakila.film_actor AS t2
ON t1.actor_id = t2.actor_id;

-- OBS.: A palavra-chave AS pode ser omitida. Nesse caso,
-- o alias é passado diretamente, após o nome da tabela:
SELECT t1.first_name, t1.actor_id, t2.actor_id
FROM sakila.actor t1
INNER JOIN sakila.film_actor t2
ON t1.actor_id = t2.actor_id;


-- Dicas sobre como escolher o tamanho do alias
/*
    Sua query é composta de poucas linhas? Então use apenas letras ou a primeira sílaba
    para representar a coluna. Por exemplo, “actor” se tornaria “A” ou “act”.

    Caso esteja montando JOINS com muitas linhas, é recomendado usar um alias mais
    descritivo para tornar a leitura e interpretação da query mais simples.
*/

SELECT co.country_id, co.country, ci.city, ci.country_id
FROM sakila.country AS co
INNER JOIN sakila.city AS ci
ON co.country_id = ci.country_id;
