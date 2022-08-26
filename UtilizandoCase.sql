--CASE serve para dar uma determinada ordem uma estrutura de decisão dentro de uma seleção.
  SELECT cdProduto, nmProduto, vlProduto,
  CASE
  WHEN vlProduto <= 6
	THEN vlProduto * 1.2
	WHEN vlProduto > 6.0 
		THEN vlProduto * 0.8
	ELSE vlProduto  
  END AS vlProduto FROM dbo.tb_Produtos

  --CASE utilizado para quando vai fazer determinadas estruturas de decisão dentro do código.