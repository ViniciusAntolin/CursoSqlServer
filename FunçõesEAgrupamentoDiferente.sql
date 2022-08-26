--M�dia
SELECT AVG(vlproduto) FROM dbo.tb_Produtos

--Soma
SELECT SUM(vlProduto)FROM dbo.tb_Produtos

--STDEV (Desvio padr�o amostral)
SELECT STDEV(vlproduto) FROM dbo.tb_Produtos

--STDEVP (Desvio padr�o populacional)
SELECT STDEVP(vlproduto) FROM dbo.tb_Produtos

--ZScore valor verificando - m�dia amostral / desvio padr�o. Descobrir qu�o longe da m�dia est� o valor do produto.
SELECT nmproduto, vlProduto, Calc.Media, Calc.DesvioPadrao, (vlProduto - Calc.Media) / Calc.DesvioPadrao AS Z_score FROM dbo.tb_Produtos, (
SELECT  AVG(vlProduto) AS Media, STDEV(vlProduto) AS DesvioPadrao FROM dbo.tb_Produtos) Calc