--Criando dados
CREATE TABLE tb_TelefoneCliente (
	cdTelefone INT NOT NULL IDENTITY (1,1),
	cdCliente INT NOT NULL,
	nmTelefon VARCHAR(15) NOT NULL,
	ativo VARCHAR(1) NOT NULL DEFAULT'S',
	CONSTRAINT fk_telefone_cliente
	FOREIGN KEY (cdCliente) REFERENCES tb_clientes (cdCliente)
)	

--Realizando a migração das informações de forma segura
BEGIN TRAN;
INSERT INTO tb_telefoneCliente (cdCliente, nmTelefon)
SELECT cdCliente, nmTelefone FROM dbo.tb_Clientes WHERE nmTelefone IS NOT NULL
ROLLBACK TRAN
--COMMIT TRAN

SELECT * FROM dbo.tb_TelefoneCliente

SELECT * FROM dbo.tb_Clientes

--Realizando o drop das colunas que não utilizaremos mais de forma segura
BEGIN TRAN;
ALTER TABLE dbo.tb_Clientes
DROP COLUMN nmTelefone, nmCelular

ROLLBACK TRAN
--COMMIT TRAN


--Alterando o nome da coluna
EXEC sp_rename 'dbo.tb_TelefoneCliente.nmTelefon', 'nmTelefone', 'COLUMN';