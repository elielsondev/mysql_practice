-- COUNT - contando resultados:
SELECT COUNT(*) FROM escola.estudantes;
SELECT COUNT(nome) FROM escola.estudantes;
SELECT COUNT(DISTINCT nome) FROM escola.estudantes;
SELECT COUNT(DISTINCT nome, idade) FROM escola.estudantes;
SELECT COUNT(nome) FROM escola.estudantes WHERE nome = 'Maria';

/* Atenção: O comando COUNT não retorna dados nulos (NULL em SQL), entretanto valores vazios
(como uma string vazia, por exemplo: "") são considerados caracteres e por isso serão contados. */
