CREATE PROCEDURE InsertCliente ( 
	@nmCliente VARCHAR(50), 
	@dtNascimento DATE, 
    @inSexo CHAR(1), 
    @nmEndereco VARCHAR(50), 
    @nmCidade VARCHAR(50), 
    @nmEstado VARCHAR(50), 
    @nmTelefone VARCHAR(50), 
    @nmCelula VARCHAR(50) 
) 
AS 
INSERT INTO dbo.tb_Clientes 
( 
    nmCliente, 
    dtNascimento, 
    inSexo, 
    nmEndereco, 
    nmCidade, 
    nmEstado, 
    nmTelefone, 
    nmCelular 
) 
VALUES 
(   @nmCliente,   -- nmCliente - varchar(50) 
    @dtNascimento, -- dtNascimento - date 
    @inSexo,   -- inSexo - varchar(1) 
    @nmEndereco,   -- nmEndereco - varchar(50) 
    @nmCidade,   -- nmCidade - varchar(50) 
    @nmEstado,   -- nmEstado - varchar(30) 
    @nmTelefone, -- nmTelefone - varchar(15) 
    @nmCelula  -- nmCelular - varchar(15) 
    ) 
	DROP PROCEDURE dbo.InsertCliente 
InsertCliente 'Carlos', '2001-11-14', 'M', 'Rua 2, 3204', 'Jales', 'São Paulo', '17 99738-6237', null 
SELECT * FROM dbo.tb_Clientes