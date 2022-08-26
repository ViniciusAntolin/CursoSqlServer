CREATE TABLE #tmp_Estados (
	nmEstado VARCHAR(30),
	nmSigla VARCHAR(2)
);

-- Inserir os dados dos estados na tabela tempor�ria
INSERT INTO #tmp_Estados (nmEstado)
SELECT DISTINCT nmEstado FROM dbo.TB_CLINTESBACKUP;

-- Update na Sigla
UPDATE #tmp_Estados SET nmSigla = 'SP' WHERE nmEstado = 'S�o Paulo';

SELECT * FROM #tmp_Estados



DROP TABLE #tmp_Estados;
