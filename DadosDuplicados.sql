SELECT * FROM dbo.tb_Produtos


--Eliminar cadastros duplicados
-- Salvar os duplicados
SELECT nmProduto, vlProduto INTO #tmp_Backup FROM dbo.tb_Produtos WHERE nmProduto IN (
SELECT nmProduto FROM dbo.tb_Produtos GROUP BY nmProduto HAVING COUNT(*) > 1)

--Apagar os duplicados
BEGIN TRAN;
DELETE FROM dbo.tb_Produtos WHERE nmProduto IN (
SELECT nmProduto, vlProduto FROM dbo.tb_Produtos GROUP BY nmProduto, vlProduto HAVING COUNT(*) > 1)

DELETE FROM #tmp_Backup WHERE vlProduto = 5

SELECT * FROM #tmp_Backup

--Voltar sem as duplicidades
INSERT INTO tb_produtos SELECT * FROM #tmp_Backup

ROLLBACK TRAN;
--COMMIT TRAN;
