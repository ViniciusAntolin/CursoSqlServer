SELECT nmproduto, vlproduto, Posi��o FROM (
SELECT nmProduto, vlProduto, RANK() OVER(ORDER BY vlProduto) AS Posi��o FROM dbo.tb_Produtos) Dados
WHERE	Dados.Posi��o BETWEEN 1 AND 20