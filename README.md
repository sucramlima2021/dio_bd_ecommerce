# Construindo seu Primeiro Projeto Lógico de Banco de Dados

## Descrição do Projeto

Este projeto visa demonstrar a construção de um banco de dados para um e-commerce, abordando as principais tabelas e relacionamentos necessários para gerenciar informações sobre clientes, produtos, vendas e pagamentos.

## Estrutura do Banco de Dados

O banco de dados consiste nas seguintes tabelas:

- Clientes: Armazena informações sobre os clientes.
- TiposDeProdutos: Lista os tipos de produtos disponíveis.
- Produtos: Contém detalhes sobre os produtos, incluindo preço e quantidade em estoque.
- Fornecedores: Registra os fornecedores de produtos.
- TiposDePagamento: Descreve os diferentes tipos de pagamento.
- Vendas: Armazena informações sobre as vendas realizadas.
- ItensDeVenda: Relaciona os produtos vendidos em cada venda.

## Inserção de Dados de Exemplo

O banco de dados é populado com dados de exemplo para demonstrar como as tabelas funcionam juntas. Os exemplos incluem clientes fictícios, produtos, vendas e muito mais.

## Exemplos de Consultas

Abaixo estão alguns exemplos de consultas SQL que podem ser executadas no banco de dados:

- Recuperações simples com SELECT Statement
  - Selecionar todos os clientes: `SELECT * FROM Clientes;`
  - Selecionar todos os produtos: `SELECT * FROM Produtos;`

- Filtros com WHERE Statement
  - Selecionar produtos com preço maior que 100: `SELECT * FROM Produtos WHERE preco > 100;`
  - Selecionar vendas após uma determinada data: `SELECT * FROM Vendas WHERE dataDaVenda > 'yyyy-mm-dd';`

- Atributos Derivados e Ordenação com ORDER BY
  - Calcular o preço total de cada produto: `SELECT nome, quantidadeEmEstoque, preco, quantidadeEmEstoque * preco AS precoTotal FROM Produtos;`
  - Selecionar produtos em ordem decrescente de preço: `SELECT * FROM Produtos ORDER BY preco DESC;`

- Condições de Filtros aos Grupos com HAVING Statement
  - Selecionar tipos de produtos com quantidade total em estoque maior que 100: `SELECT idTipoDeProduto, SUM(quantidadeEmEstoque) AS totalEstoque FROM Produtos GROUP BY idTipoDeProduto HAVING totalEstoque > 100;`

- Junções entre Tabelas para uma Visão Completa
  - Selecionar vendas com detalhes de clientes e tipos de pagamento: `SELECT v.idVenda, c.nome AS nomeCliente, tp.nome AS tipoPagamento FROM Vendas v JOIN Clientes c ON v.idCliente = c.idCliente JOIN TiposDePagamento tp ON v.idTipoDePagamento = tp.idTipoDePagamento;`

