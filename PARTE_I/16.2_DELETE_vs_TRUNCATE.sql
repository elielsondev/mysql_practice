-- DELETE VS TRUNCATE
/*
Se tem certeza absoluta de que quer excluir os registros de uma tabela de uma maneira mais rápida,
para efeitos de testes ou necessidade, o TRUNCATE é mais rápido que o DELETE.

A função principal e única do TRUNCATE é de limpar (excluir todos os registros) de uma tabela, não sendo
possível especificar o WHERE. Por isso, o TRUNCATE só pode ser usado nesse cenário.
*/

TRUNCATE banco_de_dados.tabela;

/*
Caso precise excluir condicionalmente, usando regras e especificações, use sempre o comando
DELETE juntamente com o WHERE.
*/