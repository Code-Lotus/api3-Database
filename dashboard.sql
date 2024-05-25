#DROP DATABASE DASHBOARD;
CREATE DATABASE DASHBOARD;
USE DASHBOARD;

CREATE TABLE usuarios (
	usuario_id INT PRIMARY KEY AUTO_INCREMENT, 	
	usuario_nome VARCHAR(50),
	usuario_cpf VARCHAR(15),
	usuario_email VARCHAR(70),
	usuario_senha VARCHAR(35),
	administrador VARCHAR(1) DEFAULT 0
);

CREATE TABLE clientes (
	cliente_id INT PRIMARY KEY AUTO_INCREMENT,
	cliente_nome VARCHAR(50),
	cliente_cpfcnpj VARCHAR(15),
	cliente_segmento VARCHAR(25),
    cliente_data DATE
);

CREATE TABLE produtos (
	produto_id INT PRIMARY KEY AUTO_INCREMENT,
    produto_nome VARCHAR(60),
    produto_valor FLOAT,
    produto_data DATE
);

CREATE TABLE vendas (
    venda_id INT PRIMARY KEY AUTO_INCREMENT,
    venda_data DATE,
    venda_forma_pagamento VARCHAR(20),
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id),
    produto_id INT,
    FOREIGN KEY (produto_id) REFERENCES produtos (produto_id),
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id)
);

CREATE TABLE comissoes (
	comissao_id INT PRIMARY KEY AUTO_INCREMENT,
	cnpn FLOAT,
    cnpa FLOAT,
    capn FLOAT,
    capa FLOAT
);

-- Inserir valores na tabela usuario
# INSERT INTO usuarios (usuario_nome, usuario_cpf, usuario_email, usuario_senha, administrador) VALUES ('João Silva', '123.456.789-00', 'joao@email.com', 'senha123', 1);

-- Inserir valores na tabela cliente
# INSERT INTO clientes (cliente_nome, cliente_cpfcnpj, cliente_segmento) VALUES ('Empresa XYZ', '987.654.321-00', 'Tecnologia');

-- Inserir valores na tabela vendas
# INSERT INTO vendas (venda_data, venda_produto, cliente_id, venda_valor, usuario_id) VALUES ('2024-05-13', 'Produto A', 1, 100.00, 1);

-- Mostrar valores da tabela usuario
SELECT * FROM usuarios;

-- Mostrar valores da tabela cliente
-- SELECT * FROM cliente;

-- Mostrar valores da tabela vendas
SELECT * FROM vendas;

INSERT INTO comissoes (comissao_id, cnpn, cnpa, capn, capa) VALUES (1,1,1,1,1)