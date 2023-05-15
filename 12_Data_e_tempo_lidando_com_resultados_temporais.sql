-- Se você pesquisar agora no banco sakila usando a seguinte query:
SELECT * FROM sakila.payment;
-- É possível confirmar que a coluna payment_date é exibida no formato YYYY-MM-DD HH:MM:SS.

/*
Assim, para fazer pesquisas e filtrar dados baseados em datas, temos que ter sempre isso em mente:
quando você pensar no dia de 25 de dezembro de 2020, para o banco dados, esse dia será 2020-12-25.

Maneiras de encontrar dados por data:

    - Vamos dizer que queremos encontrar pagamentos realizados na data 2005-07-31
    na tabela sakila.payment.

    Há várias formas de fazer isso:
*/

-- Usando a função DATE(coluna_do_tipo_date):
SELECT * FROM sakila.payment
WHERE DATE(payment_date) = '2005-07-31';


-- Usando LIKE para valores aproximados:
SELECT * FROM sakila.payment
WHERE DATE payment_date LIKE '2005-07-31%';


-- Usando LIKE para valores exatos:
SELECT * FROM sakila.payment
WHERE payment_date LIKE '2005-08-20 00:30:52';


-- Usando BETWEEN:
SELECT * FROM sakila.payment
WHERE payment_date BETWEEN '2005-05-26 00:00:00' AND '2005-05-27 23:59:59';


/*
Selecionando apenas partes de uma data:
    
    Às vezes você está interessado em apenas uma parte de uma data, como o ano ou as horas. MySQL
    possui funções que retornam partes específicas de uma data ou hora.
*/
SELECT DATE(payment_date) FROM sakila.payment: -- YYYY-MM-DD 
SELECT YEAR(payment_date) FROM sakila.payment: -- ANO
SELECT MONTH(payment_date) FROM sakila.payment: -- MÊS
SELECT DAY(payment_date) FROM sakila.payment: -- DIA
SELECT HOUR(payment_date) FROM sakila.payment: -- HORA
SELECT MINUTE(payment_date) FROM sakila.payment: -- MINUTO
SELECT SECOND(payment_date) FROM sakila.payment: -- SEGUNDO

