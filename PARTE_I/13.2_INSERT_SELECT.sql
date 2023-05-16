USE cadastro;

DROP TABLE IF EXISTS cliente;

CREATE TABLE cliente (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome VARCHAR(30) NOT NULL,
    idade INT NOT NULL
);

-- INSERT SELECT (Inserindo dados de uma outra tabela)
INSERT INTO cliente (nome, idade)
SELECT pessoa.nome, pessoa.idade
FROM pessoa
WHERE pessoa.idade > 18
ORDER BY pessoa.nome DESC;

SELECT * FROM cadastro.cliente;


/*
    É possível usar também SELECT * FROM e copiar todos os dados de todas as colunas de uma
    tabela para outra, mas nessa situação a tabelaA e a tabelaB precisam obrigatoriamente possuir a
    mesma quantidade de colunas, e os tipos de dados das colunas correspondentes devem ser iguais.
    
    Com essa funcionalidade, é fácil criar tabelas temporárias para testes ou por necessidade. Por
    exemplo, para trazer os dados da tabela sakila.staff para a tabela sakila.actor,
    poderíamos fazer:
*/

INSERT INTO sakila.actor (first_name, last_name)
SELECT first_name, last_name FROM sakila.staff;

SELECT first_name, last_name FROM sakila.staff;

-- Se você observar os Staff: Mike Hillyer e Jon Stephens foi inserido no final da lista.
SELECT first_name, last_name FROM sakila.actor LIMIT 5 OFFSET 197;
