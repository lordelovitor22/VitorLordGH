-- Cria um novo banco de dados
CREATE DATABASE minha_loja;

-- Usa o banco de dados criado
USE minha_loja;

-- Cria uma tabela para armazenar informações de clientes
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único para cada cliente
    nome VARCHAR(100) NOT NULL,         -- Nome do cliente, não pode ser nulo
    email VARCHAR(100) UNIQUE NOT NULL, -- Email do cliente, deve ser único e não pode ser nulo
    telefone VARCHAR(20),               -- Telefone do cliente
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Data e hora de criação do registro
);

-- Cria uma tabela para armazenar informações de produtos
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único para cada produto
    nome VARCHAR(100) NOT NULL,         -- Nome do produto, não pode ser nulo
    descricao TEXT,                     -- Descrição do produto
    preco DECIMAL(10, 2) NOT NULL,      -- Preço do produto, com 2 casas decimais
    estoque INT DEFAULT 0               -- Quantidade em estoque
);

-- Cria uma tabela para armazenar pedidos
CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único para cada pedido
    cliente_id INT NOT NULL,            -- ID do cliente que fez o pedido
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Data e hora do pedido
    total DECIMAL(10, 2) NOT NULL,      -- Valor total do pedido
    FOREIGN KEY (cliente_id) REFERENCES clientes(id) -- Relacionamento com a tabela de clientes
);

-- Insere alguns
