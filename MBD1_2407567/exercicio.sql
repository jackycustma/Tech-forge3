-- ex1

SELECT * from produto
WHERE UNIDADE = 'un';

-- ex2

SELECT * from produto
WHERE produto.CODIGO_CLASSIFICACAO = 020
and produto.QUANTIDADE > 20;

-- ex3

SELECT * from produto
WHERE DESCRICAO LIKE '%bala%'
and QUANTIDADE > 6
and CODIGO_CLASSIFICACAO = 003;

-- ex4

SELECT * from produto
WHERE DESCRICAO like '%martelo%'
and CODIGO_CLASSIFICACAO != 001;

-- ex5

SELECT * from produto
WHERE CODIGO_CLASSIFICACAO LIKE '%002'
and UNIDADE like 'cx'
and QUANTIDADE < 5;

-- ex6

SELECT * from produto
WHERE CODIGO_CLASSIFICACAO like '%002'
and UNIDADE not like 'cx'
and QUANTIDADE >= 10 
and QUANTIDADE <= 50;

-- ex7

SELECT * from produto
WHERE CODIGO_CLASSIFICACAO  = 021
and DESCRICAO like '%camiseta%'
or CODIGO_CLASSIFICACAO = 008
and DESCRICAO like '%bola%';

-- ex8

SELECT * from produto
WHERE UNIDADE = 'pct'
and produto.CODIGO_CLASSIFICACAO = 003;

-- ex9

SELECT DISTINCT UNIDADE from produto
WHERE CODIGO_CLASSIFICACAO = 006;

-- ex10

SELECT * from produto
WHERE QUANTIDADE > 6
and QUANTIDADE < 10;

-- ex11

SELECT * FROM produto
WHERE DESCRICAO LIKE '%oleo%' 
AND unidade = 'L';

-- ex12

SELECT codigo, descricao, tipo, codigo_classificacao, unidade, (quantidade * valor)
as total from produto
WHERE CODIGO_CLASSIFICACAO = 015
and unidade like 'cx';