DROP DATABASE IF EXISTS cadastro_hotel;
CREATE DATABASE cadastro_hotel;

CREATE TABLE cadastro_hotel.cliente (
    id_client INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome VARCHAR(30) NOT NULL
);

INSERT INTO cadastro_hotel.cliente (nome)
VALUES ('Elieuçon');

SELECT * FROM cadastro_hotel.cliente;
/*
    Você avisou na recepção que seu nome é Elielson, mas, quando foi ver em seu documento, foi
    registrado como Elieuçon! “Poxa, será que meu nome é tão difícil assim de se escrever?” Sua sorte
    é que o UPDATE te permite alterar valores de uma tabela com base em alguma condição.
    
    Vamos resolver isso!
*/

-- UPDATE - alterando dados:
/*
   UPDATE nome_da_tabela
   SET propriedade_a_ser_alterada = "novo valor para coluna"
   WHERE alguma_condicao     -- IMPORTANTE! Aplicar o WHERE para não alterar a tabela inteira!
*/
UPDATE cadastro_hotel.cliente
    SET nome = "Elielson"
    WHERE nome = "Elieuçon"; -- IMPORTANTE! Aplicar o WHERE para não alterar a tabela inteira!
/*
Uma curiosidade sobre o UPDATE e o DELETE no MySQL Server (MySQL Workbench) é que, por padrão,
existe uma configuração chamada safe updates mode que só vai te permitir executá-los caso eles
incluam quais IDs devem ser modificados. 
Então, caso você tente fazer a query acima, ela não funcionaria por não incluir o ID.

Para evitar essa restrição, rode o seguinte comando em uma janela de query dentro do MySQL
Workbench sempre que abri-lo para desabilitar essa funcionalidade, antes de executar seus
comandos de UPDATE ou DELETE:
*/
SET SQL_SAFE_UPDATES = 0;
-- OBS: No VSCode não precisei usa-lo, pois a query funcionou normalmente.

SELECT * FROM cadastro_hotel.cliente;
