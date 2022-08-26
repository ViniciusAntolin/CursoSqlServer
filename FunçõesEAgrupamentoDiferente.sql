--Média
SELECT AVG(vlproduto) FROM dbo.tb_Produtos

--Soma
SELECT SUM(vlProduto)FROM dbo.tb_Produtos

--STDEV (Desvio padrão amostral)
SELECT STDEV(vlproduto) FROM dbo.tb_Produtos

--STDEVP (Desvio padrão populacional)
SELECT STDEVP(vlproduto) FROM dbo.tb_Produtos

--ZScore valor verificando - média amostral / desvio padrão. Descobrir quão longe da média está o valor do produto.
SELECT nmproduto, vlProduto, Calc.Media, Calc.DesvioPadrao, (vlProduto - Calc.Media) / Calc.DesvioPadrao AS Z_score FROM dbo.tb_Produtos, (
SELECT  AVG(vlProduto) AS Media, STDEV(vlProduto) AS DesvioPadrao FROM dbo.tb_Produtos) Calc