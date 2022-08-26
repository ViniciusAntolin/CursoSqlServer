SELECT nmproduto, vlproduto, Posição FROM (
SELECT nmProduto, vlProduto, RANK() OVER(ORDER BY vlProduto) AS Posição FROM dbo.tb_Produtos) Dados
WHERE	Dados.Posição BETWEEN 1 AND 20