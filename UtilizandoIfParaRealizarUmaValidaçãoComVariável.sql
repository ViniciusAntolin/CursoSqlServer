--If é uma estrutura de decisão para o programa, ao contrário dp case que trabalha com seleção, o if decide uma coisa entre os comandos.
--Caso queira utilizar mais de um comando no if, necessário utilizar o BEGIN e END
 
 DECLARE @desconto SMALLINT
  SET @desconto = 2
  IF @desconto = 1 
  SELECT cdProduto, nmProduto, vlProduto,
  CASE
  WHEN vlProduto <= 6
	THEN vlProduto * 1.2
	WHEN vlProduto > 6.0 
		THEN vlProduto * 0.8
	ELSE vlProduto  
  END AS vlProduto FROM dbo.tb_Produtos
  ELSE
SELECT cdProduto, nmProduto, vlProduto AS vlProduto FROM dbo.tb_Produtos

--Caso queira utilizar mais de um comando no if, necessário utilizar o BEGIN e END
DECLARE @desconto SMALLINT
  SET @desconto = 2
  IF @desconto = 1 
  BEGIN	
  SELECT cdProduto, nmProduto, vlProduto,
  CASE
  WHEN vlProduto <= 6
	THEN vlProduto * 1.2
	WHEN vlProduto > 6.0 
		THEN vlProduto * 0.8
	ELSE vlProduto  
  END AS vlProduto FROM dbo.tb_Produtos
  END
  ELSE
SELECT cdProduto, nmProduto, vlProduto AS vlProduto FROM dbo.tb_Produtos