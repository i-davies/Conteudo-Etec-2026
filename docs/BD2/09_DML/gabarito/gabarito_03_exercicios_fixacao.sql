-- Gabarito: Exercicios de Fixacao (DML com INSERT INTO e FOREIGN KEY)

-- 1) Criacao do banco
CREATE DATABASE IF NOT EXISTS loja_relacional;
USE loja_relacional;

-- Limpeza para permitir reexecucao do script sem erro
DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS categorias;

-- 2) Estrutura das tabelas
CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(80) NOT NULL
);

CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(120) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    id_categoria INT NOT NULL,
    CONSTRAINT fk_produtos_categorias
        FOREIGN KEY (id_categoria)
        REFERENCES categorias(id_categoria)
);

-- 3) Inserir 3 categorias validas
INSERT INTO categorias (nome_categoria) VALUES
('Eletronicos'),
('Informatica'),
('Moveis');

-- 4) Inserir 5 produtos com categorias existentes
INSERT INTO produtos (nome_produto, preco, id_categoria) VALUES
('Smartphone', 1899.90, 1),
('Notebook', 3499.00, 2),
('Mouse', 79.90, 2),
('Cadeira de Escritorio', 649.50, 3),
('Fone Bluetooth', 199.99, 1);

-- Consultas opcionais para conferir os dados
SELECT * FROM categorias;
SELECT * FROM produtos;

-- 5) Teste de integridade referencial (id_categoria inexistente)
-- 6) Comando DML e erro esperado do MySQL
INSERT INTO produtos (nome_produto, preco, id_categoria)
VALUES ('Produto Invalido', 99.90, 99);

-- Erro esperado (pode variar um pouco conforme versao/configuracao):
-- ERROR 1452 (23000): Cannot add or update a child row:
-- a foreign key constraint fails
