SELECT nmProduto, vlProduto, 
AVG(vlProduto) OVER() AS Media, 
STDEV(vlProduto) OVER() AS Desviopadrao,
(vlProduto - AVG(vlProduto) OVER()) / STDEV(vlProduto) OVER() AS Z_score
FROM dbo.tb_Produtos