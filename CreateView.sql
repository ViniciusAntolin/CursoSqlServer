--CREATE VIEW vwEndereco_completo_clientes
--as
--SELECT c.cdCliente,
--       c.nmCliente,
--       c.dtNascimento,
--       c.inSexo,
--       c.cdEndereco,
--       e.nmRua,
--       e.nmCEP,
--	   ci.nmCidade,
--	   es.nmEstado,
--	   es.nmSigla
--FROM dbo.tb_Clientes c
--    INNER JOIN dbo.tb_Endereco e
--        ON e.cdEndereco = c.cdEndereco
--	INNER JOIN dbo.tb_Cidades ci ON ci.cdCidade = e.cdCidade
--	INNER JOIN dbo.tb_Estado es ON es.cdEstado = ci.cdEstado;

SELECT * FROM vwEndereco_completo_clientes