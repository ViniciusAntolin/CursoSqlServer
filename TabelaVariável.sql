-- Variável do tipo tabela, utilizadas pala realizar diversas alterações sem mexer no banco diretamente.
DECLARE @tabela TABLE (
	cdProduto INT PRIMARY KEY IDENTITY(1,1),
	nmProduto VARCHAR(50)
)

INSERT INTO @tabela VALUES('churros')

SELECT * FROM @tabela