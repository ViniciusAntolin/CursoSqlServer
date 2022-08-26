-- Variáveis
DECLARE @maiorPreco DECIMAL(6,2);
SET @maiorPreco = (SELECT MAX(vlproduto) FROM dbo.tb_Produtos)
SELECT @maiorPreco