
SELECT * FROM dbo.tb_Clientes

BEGIN TRAN
ALTER TABLE dbo.tb_Clientes
ADD cdEndereco INT NULL;

ALTER TABLE dbo.tb_Clientes
ADD CONSTRAINT fk_Clientes_Endereco
FOREIGN KEY (cdEndereco)
REFERENCES dbo.tb_Endereco (cdEndereco)

ROLLBACK TRAN;
--COMMIT TRAN;