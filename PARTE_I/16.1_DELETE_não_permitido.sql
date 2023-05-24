/*
Meu DELETE não foi permitido e agora…

Caso haja relações entre as tabelas (primary key e foreign keys) e existam restrições aplicadas a
elas, ao executar o DELETE ocorrerá uma ação de acordo com a restrição que tiver sido imposta na
criação da foreign key. Essas restrições podem ser as seguintes:
*/

-- Rejeita o comando DELETE:
ON DELETE NO ACTION;

-- Rejeita o comando DELETE:
ON DELETE RESTRICT;

-- Permite a exclusão dos registros da tabela pai, e seta para NULL os registros da tabela filho.
ON DELETE SET NULL;

-- Exclui a informação da tabela pai e registros relacionados.
ON DELETE CASCADE;

-- Vamos analisar um exemplo prático:

DELETE FROM sakila.actor
WHERE first_name = 'GRACE';

/*
  O banco de dados não vai permitir que você delete o ator chamado “GRACE”. Isso acontece porque
  a coluna actor_id da tabela film_actor é uma chave estrangeira (foreign key) que aponta
  para a coluna actor_id na tabela actor, e essa chave estrangeira possui a restrição
    ON DELETE RESTRICT.

  Se essa restrição não existisse, o ator seria deletado, deixando nosso banco de dados em um estado
  inconsistente, pois haveria linhas na tabela film_actor com um actor_id que não mais
  existiria!

  Para conseguir excluir este ator em actors, precisamos primeiro excluir todas as referências a ele
  na tabela sakila.film_actor:
*/

DELETE FROM sakila.film_actor
WHERE actor_id = 7; -- actor_id = 7 é o ID de 'GRACE';

-- Após excluir as referências, podemos excluir o ator com o nome “GRACE”:
DELETE FROM sakila.actor
WHERE first_name = 'GRACE';

/*
Antes de excluir dados que possuem restrições de chave estrangeira, como o exemplo que acabamos
de ver, analise se você realmente deve excluir essa informação do banco de dados e depois, caso
precise, faça de acordo com as restrições que foram impostas durante a criação da tabela.

As regras e restrições que acompanham querys de alteração do banco (como o UPDATE e o
DELETE) são importantes para manter a Integridade dos Dados, pois evitam mudanças
involuntárias e garantem que as taxas de erro sejam menores, resultando em economia de tempo na
solução de problemas.

Um banco de dados que possui um sistema de integridade de dados bem controlado e bem definido
aumenta a estabilidade das informações, desempenho das operações e manutenção das tabelas. Se
existem restrições, não faz sentido simplesmente ignorá-las, temos que entender as motivações.
*/
