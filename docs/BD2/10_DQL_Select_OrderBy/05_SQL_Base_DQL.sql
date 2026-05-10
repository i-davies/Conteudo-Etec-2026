-- ============================================================
-- BD2 - DQL: SELECT, AS e ORDER BY
-- Banco base para acompanhar os exemplos da teoria e exercicios
-- ============================================================

CREATE DATABASE IF NOT EXISTS loja_consultas;
USE loja_consultas;

DROP TABLE IF EXISTS produtos;

CREATE TABLE produtos (
    id_produto  INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(120) NOT NULL,
    categoria   VARCHAR(60)  NOT NULL,
    preco       DECIMAL(10,2) NOT NULL,
    estoque     INT NOT NULL
);

-- ============================================================
-- Carga inicial: 12 produtos em 4 categorias
-- ============================================================

INSERT INTO produtos (nome_produto, categoria, preco, estoque)
VALUES
    ('Teclado Mecanico',          'Informatica',   349.90, 15),
    ('Mouse sem Fio',             'Informatica',   129.90, 30),
    ('Monitor 24 polegadas',      'Informatica',  1299.00,  8),
    ('Cadeira Gamer',             'Moveis',        899.50, 12),
    ('Mesa de Escritorio',        'Moveis',        450.00,  6),
    ('Luminaria de Mesa',         'Moveis',         89.90, 20),
    ('SQL para Iniciantes',       'Livros',         59.90, 25),
    ('Clean Code',                'Livros',         79.90, 18),
    ('Algoritmos Descomplicados', 'Livros',         69.00, 10),
    ('Caneta Esferofica cx 50',   'Papelaria',      34.90, 40),
    ('Caderno Universitario 200', 'Papelaria',      27.50, 35),
    ('Marcador Permanente',       'Papelaria',      15.80, 50);

-- ============================================================
-- Os SELECTs serao construidos junto com os alunos em aula.
-- ============================================================
