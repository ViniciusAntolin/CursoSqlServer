--CASE serve para dar uma determinada ordem uma estrutura de decis�o dentro de uma sele��o.
  SELECT cdProduto, nmProduto, vlProduto,
  CASE
  WHEN vlProduto <= 6
	THEN vlProduto * 1.2
	WHEN vlProduto > 6.0 
		THEN vlProduto * 0.8
	ELSE vlProduto  
  END AS vlProduto FROM dbo.tb_Produtos

  --CASE utilizado para quando vai fazer determinadas estruturas de decis�o dentro do c�digo.