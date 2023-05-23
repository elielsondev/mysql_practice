--  --safe-updates

/*
Para quem está ainda está se familiarizando com o MySQL, o –safe-updates (ou --i-am-a-
dummy, sim, é uma propriedade real do MySQL) pode ser uma configuração segura para utilizar
operadores de alteração de dados.

Ele é útil para casos nos quais você tenha emitido um comando UPDATE ou DELETE, mas
esquecido de incluir WHERE para indicar quais linhas devem ser modificadas, evitando que a query
atualize ou exclua todas as linhas da tabela.

O --safe-updates exige que você inclua um valor chave (key value), por exemplo os ids
(lembrando que os valores da coluna id de uma tabela são do tipo KEY) dos itens selecionados, para
executar o UPDATE ou o DELETE.

Essa camada de segurança é importante em bancos reais executando em ambientes de produção e ajuda
a prevenir acidentes. Esse modo também restringe querys SELECT que produzem resultados muito grandes,
com uma quantidade excessiva de linhas.

A opção –safe-updates exige que o mysql execute a seguinte instrução ao se conectar ao
servidor:
*/
SET sql_safe_updates=1, sql_select_limit=1000, max_join_size=1000000;

/*
    • sql_select_limit=1000: limita o conjunto de resultados SELECT a 1.000 linhas, a menos
    que a instrução inclua LIMIT.
    
    • max_join_size=1.000.000: faz com que as instruções SELECT de várias tabelas produzam um
    erro se o servidor estimar que deve examinar mais de 1.000.000 combinações de linhas.
*/

-- Você pode desabilitar o --safe-updates utilizando o comando SET:
SET sql_safe_updates = 0;

-- Ou configurar para um modo mais conveniente para você, alterando os valores das variáveis:
SET sql_safe_updates=1, sql_select_limit=500, max_join_size=10000;

/*
Quando ocorre um erro de --safe-updates, a mensagem de erro inclui o primeiro diagnóstico
que foi produzido, para fornecer informações sobre o motivo da falha. A mensagem pode, por
exemplo, indicar que o UPDATE está sendo executado com um operador WHERE que não se refere
a uma coluna do tipo KEY (veja o código abaixo).

Nesse caso, você pode desabilitar o --safe-updates, ou utilizar uma coluna KEY como
referência do seu operador WHERE. Lembre-se de que ler e interpretar os erros vai ajudar na sua
solução!
*/
