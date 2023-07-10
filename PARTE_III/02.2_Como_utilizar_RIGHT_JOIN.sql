/*
 RIGHT JOIN  Quando utilizamos o RIGHT JOIN, focamos a tabela da direita.
 
 São retornados todos os registros da tabela da direita e valores
 correspondentes da tabela da esquerda, caso existam.
 
 Valores que não possuem correspondentes são exibidos como nulos.
*/

SELECT				 Veja uma representação visual do RIGHT JOIN abaixo:
    c.customer_id,			
    c.first_name,			
    c.last_name,			
    a.actor_id,				
    a.first_name,			
    a.last_name			
FROM sakila.customer AS c	
RIGHT JOIN sakila.actor AS a	
ON c.last_name = a.last_name	
ORDER BY c.last_name;
