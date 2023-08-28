-- Criar o banco de dados
CREATE DATABASE ECommerceDB;
USE ECommerceDB;

-- Criar tabela Clientes
CREATE TABLE Clientes (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20),
    endereco VARCHAR(255)
);

-- Criar tabela TiposDeProdutos
CREATE TABLE TiposDeProdutos (
    idTipoDeProduto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

-- Criar tabela Produtos
CREATE TABLE Produtos (
    idProduto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idTipoDeProduto INT,
    preco DECIMAL(10, 2) NOT NULL,
    quantidadeEmEstoque INT DEFAULT 0,
    FOREIGN KEY (idTipoDeProduto) REFERENCES TiposDeProdutos(idTipoDeProduto)
);

-- Criar tabela Fornecedores
CREATE TABLE Fornecedores (
    idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nomeContato VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

-- Criar tabela TiposDePagamento
CREATE TABLE TiposDePagamento (
    idTipoDePagamento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

-- Criar tabela Vendas
CREATE TABLE Vendas (
    idVenda INT AUTO_INCREMENT PRIMARY KEY,
    idCliente INT,
    dataDaVenda DATE,
    valorTotal DECIMAL(10, 2) NOT NULL,
    idTipoDePagamento INT,
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente),
    FOREIGN KEY (idTipoDePagamento) REFERENCES TiposDePagamento(idTipoDePagamento)
);

-- Criar tabela ItensDeVenda
CREATE TABLE ItensDeVenda (
    idItemDeVenda INT AUTO_INCREMENT PRIMARY KEY,
    idVenda INT,
    idProduto INT,
    quantidade INT NOT NULL,
    precoUnitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (idVenda) REFERENCES Vendas(idVenda),
    FOREIGN KEY (idProduto) REFERENCES Produtos(idProduto)
);

