--Formas de criar uma tabela tempor�ria.

CREATE TABLE #tmp_dados (
	Nome VARCHAR(50) NULL,
	Idade INT
);


INSERT INTO	#tmp_Dados (Nome, Idade) VALUES ('Jailson', 30);

	SELECT * FROM #tmp_dados
	DROP TABLE #tmp_dados

--Criando tabela tempor�ria com select into.
SELECT * INTO #tmp_dados FROM dbo.tb_Clientes

SELECT * FROM #tmp_dados