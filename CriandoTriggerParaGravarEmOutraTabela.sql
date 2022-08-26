--Criando a tabela que irá receber as alterações dos clientes
CREATE TABLE tb_Clientes_Hist(
	cdClientes_Hist INT IDENTITY(1,1) NOT NULL,
	cdCliente INT NOT NULL,
	nmCliente VARCHAR(50) NOT NULL,
	dtNascimento DATE NULL,
	inSexo VARCHAR(1) NOT NULL,
	cdEndereco INT NULL,
	dtInclusao DATETIME
)

--Criando a Trigger que irá inserir as informações antes da alteração
/*CREATE TRIGGER tgg_Backup_clientes
ON tb_clientes
FOR UPDATE
AS
INSERT INTO dbo.tb_Clientes_Hist
(
    cdCliente,
    nmCliente,
    dtNascimento,
    inSexo,
    cdEndereco,
    dtInclusao
)
SELECT cdCliente,
       nmCliente,
       dtNascimento,
       inSexo,
       cdEndereco, GETDATE()
FROM deleted;*/

--Realizando o update para testar
BEGIN TRAN;
UPDATE dbo.tb_Clientes SET inSexo = 'f' WHERE cdCliente = 6
SELECT * FROM dbo.tb_Clientes_Hist

ROLLBACK TRAN;
--COMMIT TRAN

SELECT * FROM dbo.tb_Clientes

UPDATE dbo.tb_Clientes SET dtNascimento = '1999-03-28' WHERE cdCliente = 4

SELECT * FROM dbo.tb_Clientes_Hist