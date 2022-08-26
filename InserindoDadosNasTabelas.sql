  
  INSERT INTO dbo.tb_Estado (nmSigla, nmEstado ) VALUES
  ('AC', 'Acre'),
  ('AL', 'Alagoas'),
  ('AP', 'Amap�'),
  ('AM', 'Amazonas'),
  ('BA', 'Bahia'),
  ('CE', 'Cear�'),
  ('DF', 'Distrito Federal'),
  ('ES', 'Esp�rito Santo'),
  ('GO', 'Goi�s'),
  ('MA', 'Maranh�o'),
  ('MT', 'Mato Grosso'),
  ('MS', 'Mato Grosso do Sul'),
  ('MG', 'Minas Gerais'),
  ('PA', 'Par�'),
  ('PE', 'Pernambuco'),
  ('PI', 'Piau�'),
  ('RJ', 'Rio de Janeiro'),
  ('RN', 'Rio Grande do Norte'),
  ('RS', 'Rio Grande do Sul'),
  ('RO', 'Rond�nia'),
  ('RR', 'Roraima'),
  ('SC', 'Santa Catarina'),
  ('SP', 'S�o Paulo'),
  ('SE', 'Sergipe'),
  ('TO', 'Tocantins');


  INSERT INTO tb_Produtos(nmProduto, vlProduto) VALUES 
  ('Suco de Morango', 4.0),
  ('Suco de Tamarindo', 4.0),
  ('Coxinha', 3.5),
  ('X-Baicon', 6.12),
  ('X-Salada', 11.9),
  ('Infartinho', 10),
  ('Kibe', 9.90),
  ('X-Tudo', 5.5),
  ('Por��o de batata', 15.0),
  ('Sorvetes', 20.0),
  ('Refrigerante Lata', 4.5),
  ('P�o de Batata', 6.0),
  ('Suco de Tamarindo', 4.0),
  ('Refrigerante 2L', 8.0),
  ('Balas', 0.5);


  INSERT INTO tb_Vendas (cdCliente, dtVenda) VALUES (1, GETDATE());