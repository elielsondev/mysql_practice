-- Criar um banco de dados para usar posteriormente usar o DISTINCT:

DROP DATABASE escola;

CREATE DATABASE IF NOT EXISTS escola;

USE escola;

CREATE TABLE estudantes (
  nome VARCHAR(30) NOT NULL,
  idade INT NOT NULL
);

INSERT INTO escola.estudantes (nome, idade) VALUES
  ('Maria', 40),
  ('Ana', 22),
  ('Pedro', 45),
  ('João', 32),
  ('Maria', 29),
  ('Tiago', 32);


-- DISTINCT - evitando dados repetidos:
SELECT DISTINCT nome FROM escola.estudantes;

SELECT DISTINCT idade FROM escola.estudantes;

SELECT DISTINCT nome, idade FROM escola.estudantes;
