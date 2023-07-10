/*
Notando as diferenças
Depois de ter analisado as queries acima, note que, de fato, a única diferença entre
os três joins é a questão do foco. Vamos explorar essa ideia a seguir.

Até o momento, temos usado mais de uma tabela para analisar dados e gerar informação.
No entanto, a informação a ser analisada pode estar concentrada em apenas uma tabela.
Nesse cenário, o SELF JOIN pode ser usado para criar resultados relevantes.


O que é auto relacionamento (self join) e quando utilizá-lo?

Há certos cenários nos quais faz sentido pesquisar e tirar alguma conclusão analisando 
apenas uma única tabela. Os tipos de JOIN que você viu até agora precisam necessariamente 
que mais de uma tabela seja incluída em uma query para que um resultado possa ser gerado. 

O self join não possui esse requisito. Vamos ver a seguir algumas das aplicações do self 
join(auto relacionamento).

É possível fazer pesquisas e comparações dentro da própria tabela através do self join. 
Lembre-se dessa opção sempre que a informação que você precisa filtrar ou comparar para 
encontrar algo estiver em uma única tabela.

Lembre-se: self join não é um comando SQL! No SGBD MySQL o conceito de self join é apenas 
um caso em que uma tabela faz JOIN consigo mesma. 

Você pode utilizar qualquer dos tipos de JOIN (INNER, RIGHT ou LEFT) vistos anteriormente 
para realizar um self join.

O auto relacionamento geralmente é usado para consultar dados hierárquicos ou para comparar 
uma linha com outras linhas na mesma tabela.
*/

