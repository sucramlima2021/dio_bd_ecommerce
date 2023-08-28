--Seleciona o Banco de Dados
USE ECommerceDB;

-- Selecionar todos os clientes
SELECT * FROM Clientes;

-- Selecionar todos os produtos
SELECT * FROM Produtos;

-- Selecionar todas as vendas
SELECT * FROM Vendas;


-- Selecionar produtos com preço maior que 100
SELECT * FROM Produtos WHERE preco > 100;

-- Selecionar vendas realizadas após 2023-08-28
SELECT * FROM Vendas WHERE dataDaVenda > '2023-08-28';


-- Selecionar produtos e calcular o preço total (quantidade * preço) para cada um
SELECT nome, quantidadeEmEstoque, preco, quantidadeEmEstoque * preco AS precoTotal FROM Produtos;


-- Selecionar clientes em ordem alfabética de nome
SELECT * FROM Clientes ORDER BY nome;

-- Selecionar produtos em ordem decrescente de preço
SELECT * FROM Produtos ORDER BY preco DESC;


-- Selecionar tipos de produtos com quantidade total em estoque maior que 100
SELECT idTipoDeProduto, SUM(quantidadeEmEstoque) AS totalEstoque FROM Produtos GROUP BY idTipoDeProduto HAVING totalEstoque > 100;


-- Selecionar vendas com detalhes de clientes e tipos de pagamento
SELECT v.idVenda, c.nome AS nomeCliente, tp.nome AS tipoPagamento
FROM Vendas v
INNER JOIN Clientes c ON v.idCliente = c.idCliente
INNER JOIN TiposDePagamento tp ON v.idTipoDePagamento = tp.idTipoDePagamento;
