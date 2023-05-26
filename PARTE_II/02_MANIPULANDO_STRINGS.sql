-- Manipulação de strings:

-- IMPORTANTE: As strings são indexadas a partir do índice 1 e não do índice 0.

/*
  Uma das responsabilidades das pessoas que lidam com o registro de
  informações em um banco de dados é se certificar de que esses dados
  estão coerentes, normalizados e cadastrados no formato correto.
  
  O MySQL possui algumas funções de manipulação de texto que facilitam essas tarefas.

As principais podem ser vistas a seguir:
*/

-- Converte o texto da string para CAIXA ALTA
SELECT UCASE('Oi, eu sou uma string'); -- OI, EU SOU UMA STRING

-- Converte o texto da string para caixa baixa
SELECT LCASE('Oi, eu sou uma string'); -- oi, eu sou uma string

-- Substitui as ocorrências de uma substring em uma string
SELECT REPLACE('Oi, eu sou uma string', 'string', 'cadeia de caracteres');
-- Oi, eu sou uma cadeia de caracteres


-- Retorna a parte da esquerda de uma string de acordo com o
-- número de caracteres especificado
SELECT LEFT('Oi, eu sou uma string', 3); -- Oi,

-- Retorna a parte da direita de uma string de acordo com o
-- número de caracteres especificado
SELECT RIGHT('Oi, eu sou uma string', 6); -- string

-- Exibe o tamanho, em caracteres, da string, a função LENGTH retorna o tamanho em bytes
SELECT CHAR_LENGTH('Oi, eu sou uma string'); -- 21

-- Extrai parte de uma string de acordo com o índice de um caractere inicial
-- e a quantidade de caracteres a extrair
SELECT SUBSTRING('Oi, eu sou uma string', 5, 2); -- eu

-- Se a quantidade de caracteres a extrair não for definida,
-- então a string será extraída do índice inicial definido, até o seu final
SELECT SUBSTRING('Oi, eu sou uma string', 5); -- eu sou uma string


/*
  Porém existem outras como:
    - CONCAT: concatena duas strings
    - CONCAT_WS: concatena com espaços entre as strings
    - LCASE: transforma em minúsculas
    - LTRIM: remove espaços em branco em inicio
    - RTRIM: remove espaços em branco em fim
    - LPAD: adiciona espaços em branco em inicio
    - RPAD: adiciona espaços em branco em fim
    ...
*/
