--BANCO DE DADOS PROJETO INTEGRADOR `CAFETERIA`
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

