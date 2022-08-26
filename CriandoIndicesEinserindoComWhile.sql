CREATE TABLE tb_testeIndices(
	col1 int,
	col2 int
)
DROP TABLE dbo.tb_testeIndices
-- Índice não clusterizado
CREATE NONCLUSTERED INDEX IDX_1 ON dbo.tb_testeIndices(col1)

-- Índice cluesterizado
CREATE CLUSTERED INDEX IDX_2 ON dbo.tb_testeIndices(col2)

-- Inserindo os dados na tabela
DECLARE @i INT
SET @i = 0

WHILE @i < 10000
BEGIN
 INSERT INTO tb_testeindices (col1, col2) VALUES (ROUND(RAND() * 1000, 0), ROUND(RAND() * 1000, 0)) 
 SET @i = @i + 1
 END

 DELETE FROM dbo.tb_testeIndices

 SELECT * FROM dbo.tb_testeIndices 