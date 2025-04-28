--BANCO DE DADOS PROJETO INTEGRADOR `CAFETERIA`

CREATE DATABASE bancocafeteria;
-- Criação da tabela de clientes
CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    cliente_nome TEXT NOT NULL,
    data DATE NOT NULL
);
CREATE TABLE pedido_itens (
    pedido_id INTEGER REFERENCES pedidos(id),
    produto_id INTEGER REFERENCES produtos(id),
    quantidade INTEGER NOT NULL,
    PRIMARY KEY (pedido_id, produto_id)
);

---------------------------------------
----------- Inserção de dados

INSERT INTO produtos (nome, preco, estoque) VALUES
('Café Expresso', 5.00, 100),
('Pão de Queijo', 4.50, 50),
('Bolo de Chocolate', 7.00, 30);

INSERT INTO pedidos (cliente_nome, data) VALUES
('Fernanda Alves', '2025-04-14'),
('João Pedro', '2025-04-15');

INSERT INTO pedido_itens (pedido_id, produto_id, quantidade) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 1);