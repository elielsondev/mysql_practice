-- DELETE - removendo dados de uma tabela:

/*
  Excluindo dados de uma tabela
  Para excluir dados de forma básica, temos a seguinte sintaxe:

     DELETE FROM banco_de_dados.tabela
     WHERE nome_da_coluna = 'valor';

  WHERE é opcional, porém sem ele todas as linhas da tabela seria excluida.
*/

DELETE FROM sakila.film_text
WHERE title = 'ACADEMY DINOSAUR';


SET sql_safe_updates = 0;
-- Lembre-se de que a query acima é necessária no MySQL Workbench:
/*
Ele é útil para casos nos quais você tenha emitido um comando UPDATE ou DELETE, mas
esquecido de incluir WHERE para indicar quais linhas devem ser modificadas, evitando que a query
atualize ou exclua todas as linhas da tabela.
*/

SELECT title FROM sakila.film_text WHERE title = 'ACADEMY DINOSAUR';
-- Após executar a query acima irá ver que o titulo foi deletado.