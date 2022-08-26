-- Iniciar a transação
BEGIN TRAN;

CREATE TABLE #tmp_Estados (
	cdEstado INT IDENTITY(1,1),
	nmEstado VARCHAR(30),
	nmSigla VARCHAR(2)
);

-- Inserir os dados dos estados na tabela temporária
INSERT INTO #tmp_Estados (nmEstado)
SELECT DISTINCT nmEstado FROM tb_Clientes ORDER BY nmEstado;

-- Tratamento dos dados

-- Update na Sigla
UPDATE #tmp_Estados SET nmSigla = 'SP' WHERE nmEstado = 'São Paulo';
UPDATE #tmp_Estados SET nmSigla = 'GO' WHERE nmEstado = 'Goias';

SET IDENTITY_INSERT tb_Estado ON; -- Insere na coluna de identity

-- Inserindo na tabela de Estado
INSERT INTO tb_Estado (cdEstado, nmEstado, nmSigla)
SELECT cdEstado, nmEstado, nmSigla FROM #tmp_Estados;

-- SELECT * FROM #tmp_estados
-- SELECT * FROM tb_Estado;

DELETE FROM dbo.tb_Estado

DROP TABLE #tmp_Estados;

SET IDENTITY_INSERT tb_Estado OFF;


ROLLBACK TRAN;
-- COMMIT TRAN;

SELECT * FROM dbo.tb_Clientes

InsertCliente 'Rodrigo', '1973-06-30', 'M', 'Rua 15, 3204', 'Goiania', 'Goias', '62 99738-6237', null
