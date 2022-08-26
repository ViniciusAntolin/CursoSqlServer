SELECT * FROM dbo.tb_Cidades

SELECT * FROM dbo.tb_Clientes C INNER JOIN dbo.tb_Cidades cid ON cid.nmCidade = C.nmCidade

SELECT * FROM dbo.tb_Endereco

-- Iniciar a transação
BEGIN TRAN;

CREATE TABLE #tmp_Endereco (
	cdEndereco INT IDENTITY(1,1),
	cdCidade int,
	nmRua VARCHAR(50)
);

-- Inserir os dados dos estados na tabela temporária
INSERT INTO #tmp_endereco (cdCidade, nmRua)
SELECT cid.cdCidade, C.nmEndereco FROM dbo.tb_Clientes C INNER JOIN dbo.tb_Cidades cid ON cid.nmCidade = C.nmCidade

-- Tratamento dos dados

SET IDENTITY_INSERT dbo.tb_Endereco ON; -- Insere na coluna de identity

-- Inserindo na tabela de Estado
INSERT INTO tb_endereco ( cdEndereco, cdCidade, nmRua )
SELECT cdEndereco, cdCidade, nmRua FROM #tmp_Endereco;

-- SELECT * FROM #tmp_endereco;
-- SELECT * FROM tb_Estado;

DELETE FROM #tmp_Endereco

DROP TABLE #tmp_Endereco
;

SET IDENTITY_INSERT tb_Estado OFF;


ROLLBACK TRAN;
-- COMMIT TRAN;
