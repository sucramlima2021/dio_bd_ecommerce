--Seleciona o Banco de Dados
USE ECommerceDB;

-- Popular tabela TiposDeProdutos
INSERT INTO TiposDeProdutos (nome) VALUES
    ('Eletrônicos'),
    ('Roupas'),
    ('Brinquedos'),
    ('Alimentos'),
    ('Móveis');

-- Popular tabela TiposDePagamento
INSERT INTO TiposDePagamento (nome) VALUES
    ('Boleto'),
    ('Cartão de Crédito'),
    ('Transferência Bancária');

-- Popular tabela Clientes
INSERT INTO Clientes (nome, email, telefone, endereco) VALUES
    ('João Silva', 'joao@example.com', '(11) 1234-5678', 'Rua A, 123'),
    ('Maria Santos', 'maria@example.com', '(22) 9876-5432', 'Avenida B, 456');

-- Popular tabela Fornecedores
INSERT INTO Fornecedores (nome, nomeContato, email, telefone) VALUES
    ('Fornecedor Eletrônicos', 'João Fornecedor', 'fornecedor@example.com', '(33) 5555-4444'),
    ('Fornecedor Roupas', 'Maria Fornecedor', 'fornecedor2@example.com', '(44) 7777-8888');

-- Popular tabela Produtos
INSERT INTO Produtos (nome, idTipoDeProduto, preco, quantidadeEmEstoque) VALUES
    ('Smartphone', 1, 1500.00, 100),
    ('Camiseta', 2, 50.00, 200),
    ('Boneca', 3, 30.00, 150);

-- Popular tabela Vendas
INSERT INTO Vendas (idCliente, dataDaVenda, valorTotal, idTipoDePagamento) VALUES
    (1, '2023-08-28', 1600.00, 2),
    (2, '2023-08-29', 80.00, 1);

-- Popular tabela ItensDeVenda
INSERT INTO ItensDeVenda (idVenda, idProduto, quantidade, precoUnitario) VALUES
    (1, 1, 1, 1500.00),
    (1, 2, 2, 25.00),
    (2, 3, 3, 10.00);
