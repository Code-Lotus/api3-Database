CREATE DATABASE DASHBOARD;
USE DASHBOARD;
CREATE TABLE usuario(
	usuario_id INT PRIMARY KEY AUTO_INCREMENT, 	
	usuario_nome VARCHAR(50),
	usuario_cpf VARCHAR(15),
	usuario_email VARCHAR(70),
	usuario_senha VARCHAR(35),
	administrador BOOL	
);

CREATE TABLE cliente(
	cliente_id INT PRIMARY KEY AUTO_INCREMENT,
	cliente_nome VARCHAR(50),
	cliente_cpfcnpj VARCHAR(15),
	cliente_segmento VARCHAR(25)
);

CREATE TABLE vendas (
    venda_id INT PRIMARY KEY AUTO_INCREMENT,
    venda_data DATE,
    venda_produto VARCHAR(35),
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES cliente (cliente_id),
    venda_valor FLOAT,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id)
);


-- Inserir valores na tabela usuario
INSERT INTO usuario (usuario_nome, usuario_cpf, usuario_email, usuario_senha, administrador)
VALUES ('João Silva', '123.456.789-00', 'joao@email.com', 'senha123', 1);

-- Inserir valores na tabela cliente
INSERT INTO cliente (cliente_nome, cliente_cpfcnpj, cliente_segmento)
VALUES ('Empresa XYZ', '987.654.321-00', 'Tecnologia');

-- Inserir valores na tabela vendas
INSERT INTO vendas (venda_data, venda_produto, cliente_id, venda_valor, usuario_id)
VALUES ('2024-05-13', 'Produto A', 1, 100.00, 1);

-- Mostrar valores da tabela usuario
-- SELECT * FROM usuario;

-- Mostrar valores da tabela cliente
-- SELECT * FROM cliente;

-- Mostrar valores da tabela vendas
-- SELECT * FROM vendas;
