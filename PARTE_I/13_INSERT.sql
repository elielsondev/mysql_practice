/*
Informação importante sobre os tipos de aspas:

    • Backticks ou crase ``: são usadas para identificar nome de tabelas e colunas. São
    necessárias apenas quando o identificador for uma palavra reservada do MySQL, ou quando o
    nome da tabela ou coluna contiver espaços em branco.

    • Aspas simples '': devem ser usadas em valores do tipo string. Aspas simples são aceitas na
    maioria dos Sistemas de Gerenciamento de Banco de Dados, sendo assim, é preferível usar
    aspas simples no lugar das aspas duplas.
*/

DROP DATABASE IF EXISTS cadastro;

-- Criando banco de dados:
-- Você pode escolher entre a query DATABASE / SCHEMA:
CREATE SCHEMA cadastro;

-- Criando tabela:
USE cadastro;

CREATE TABLE pessoa (
    cpf VARCHAR(11) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    sexo CHAR,
    PRIMARY KEY (cpf)
);


-- INSERT - adicionando dados em tabelas:
INSERT INTO pessoa (cpf, nome, idade, sexo)
VALUES 
     ('00011122233', 'Elielson', 33, 'M'),
     ('33322211100', 'Maria', 35, 'F'),
     ('44455523333', 'Elizabeth', 11, 'F'),
     ('55544423333', 'Eliel', 7, 'M');
     
-- SELECT - selecionando dados da tabela:
SELECT * FROM pessoa;
