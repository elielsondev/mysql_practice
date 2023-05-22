-- UPDATE em massa:
-- Por questões de performance, para que apenas uma solicitação de query seja enviada ao servidor,
-- podemos fazer uma atualização em massa.

-- Opção 1 - Incluindo a lista de condições fixas:
UPDATE sakila.actor
SET first_name = 'Elielson'
WHERE actor_id IN (1,2,3);

-- Opção 2 - Especificando como cada entrada será alterada individualmente:
UPDATE sakila.actor
SET first_name = (
    CASE actor_id WHEN 1 THEN 'Eliel' -- se actor_id = 1, alterar first_name para 'Eliel'
                  WHEN 2 THEN 'Elizabeth' -- se actor_id = 2, alterar first_name para 'Elizabeth'
                  WHEN 3 THEN 'Maria' -- se actor_id = 3, alterar first_name para 'Maria'
                  ELSE first_name -- em todos os outros casos, mantém-se o first_name.
    END
);

SELECT * FROM sakila.actor;
