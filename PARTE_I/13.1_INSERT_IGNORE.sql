-- INSERT IGNORE - Ignorando linhas existentes:

/* Quando for importar uma quantidade grande de dados, pode ser preferível, em alguns cenários, que
você simplesmente ignore os erros e pule os dados problemáticos, que, normalmente,
interromperiam a query em função de alguma restrição imposta na tabela.

Ex: duplicidade de primary keys.

INSERT IGNORE INTO table_name (column1, column2, column3) VALUES (value1, value2, value3);
*/
USE cadastro;

INSERT IGNORE INTO pessoa (cpf, nome, idade, sexo)
VALUES 
     ('00011122233', 'Elielson', 33, 'M'),
     ('00000000000', 'Tesla', 45, 'M');
-- IMPORTANTE: Lembre-se de que o INSERT IGNORE vai pular os outros erros silenciosamente também.


-- SELECT - selecionando dados da tabela:
SELECT * FROM pessoa;


/* LEMBRETE:
    AUTO_INCREMENT: É preciso saber que o auto_increment é uma funcionalidade que todos os bancos de
    dados possuem. Ela permite que valores sejam gerados automaticamente cada vez que uma nova
    linha é inserida em uma tabela que tem essa restrição ativa.
    
    A diferença entre o AUTO_INCREMENT e o PRIMARY KEY é que o AUTO_INCREMENT gera valores
    automaticamente e o PRIMARY KEY precisa ser definido manualmente.
*/
