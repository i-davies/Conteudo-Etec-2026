-- ============================================================
-- BD2 - SELECT com Multiplas Condicoes e Ordenacao
-- Base ampliada para praticar consultas combinadas
-- ============================================================

CREATE DATABASE IF NOT EXISTS bd2_selects_combinados;
USE bd2_selects_combinados;

DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
    id_cliente      INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente    VARCHAR(100) NOT NULL,
    cidade          VARCHAR(80)  NOT NULL,
    faixa_cliente   VARCHAR(30)  NOT NULL
);

CREATE TABLE produtos (
    id_produto        INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto      VARCHAR(120) NOT NULL,
    categoria         VARCHAR(60)  NOT NULL,
    preco_tabela      DECIMAL(10,2) NOT NULL,
    ativo             BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE pedidos (
    id_pedido         INT AUTO_INCREMENT PRIMARY KEY,
    cliente           VARCHAR(100) NOT NULL,
    cidade_entrega    VARCHAR(80)  NOT NULL,
    status_pedido     VARCHAR(30)  NOT NULL,
    canal_venda       VARCHAR(30)  NOT NULL,
    forma_pagamento   VARCHAR(30)  NOT NULL,
    valor_total       DECIMAL(10,2) NOT NULL,
    data_pedido       DATE NOT NULL
);

-- ============================================================
-- Carga inicial: clientes (18 registros)
-- ============================================================

INSERT INTO clientes (nome_cliente, cidade, faixa_cliente)
VALUES
    ('Ana Lima',          'Sorocaba',   'Prata'),
    ('Bruno Costa',       'Itu',        'Bronze'),
    ('Carla Souza',       'Salto',      'Prata'),
    ('Diego Alves',       'Sorocaba',   'Ouro'),
    ('Elena Martins',     'Votorantim', 'Ouro'),
    ('Felipe Ramos',      'Itu',        'Prata'),
    ('Gabriela Nunes',    'Salto',      'Bronze'),
    ('Henrique Faria',    'Sorocaba',   'Ouro'),
    ('Isabela Torres',    'Itu',        'Prata'),
    ('Joao Batista',      'Salto',      'Bronze'),
    ('Karen Prado',       'Sorocaba',   'Ouro'),
    ('Lucas Melo',        'Itu',        'Prata'),
    ('Marina Araujo',     'Votorantim', 'Bronze'),
    ('Nicolas Pereira',   'Sorocaba',   'Ouro'),
    ('Olivia Mendes',     'Salto',      'Prata'),
    ('Paulo Henrique',    'Itu',        'Ouro'),
    ('Renata Gomes',      'Sorocaba',   'Prata'),
    ('Sergio Duarte',     'Salto',      'Bronze');

-- ============================================================
-- Carga inicial: produtos (20 registros)
-- ============================================================

INSERT INTO produtos (nome_produto, categoria, preco_tabela, ativo)
VALUES
    ('Notebook i5 16GB',          'Informatica',  3799.00, TRUE),
    ('Notebook i7 32GB',          'Informatica',  5499.00, TRUE),
    ('Monitor 24 polegadas',      'Informatica',  1099.00, TRUE),
    ('Mouse sem Fio',             'Informatica',   149.90, TRUE),
    ('Teclado Mecanico',          'Informatica',   329.90, TRUE),
    ('Webcam Full HD',            'Informatica',   259.90, TRUE),
    ('Cadeira Ergonomica',        'Moveis',       1290.00, TRUE),
    ('Mesa Escritorio 120cm',     'Moveis',        690.00, TRUE),
    ('Apoio de Pes',              'Moveis',        119.90, TRUE),
    ('Luminaria LED',             'Moveis',         89.90, TRUE),
    ('Livro SQL Pratico',         'Livros',         74.90, TRUE),
    ('Livro Modelagem de Dados',  'Livros',         89.90, TRUE),
    ('Livro APIs Modernas',       'Livros',         95.50, TRUE),
    ('Caderno 200 folhas',        'Papelaria',      29.90, TRUE),
    ('Caneta Gel kit 10',         'Papelaria',      24.90, TRUE),
    ('Marca Texto kit 6',         'Papelaria',      19.90, TRUE),
    ('HD Externo 1TB',            'Informatica',   459.00, TRUE),
    ('Suporte para Notebook',     'Informatica',   139.90, TRUE),
    ('Mochila para Notebook',     'Acessorios',    249.90, TRUE),
    ('Carregador Universal',      'Acessorios',    179.90, FALSE);

-- ============================================================
-- Carga inicial: pedidos (30 registros)
-- ============================================================

INSERT INTO pedidos (cliente, cidade_entrega, status_pedido, canal_venda, forma_pagamento, valor_total, data_pedido)
VALUES
    ('Ana Lima',         'Sorocaba',   'Entregue',      'Site',        'Pix',      540.00, '2026-03-01'),
    ('Bruno Costa',      'Itu',        'Pendente',      'Loja',        'Cartao',   320.00, '2026-03-02'),
    ('Carla Souza',      'Salto',      'Em separacao',  'Marketplace', 'Boleto',   890.00, '2026-03-02'),
    ('Diego Alves',      'Sorocaba',   'Cancelado',     'Site',        'Pix',      760.00, '2026-03-03'),
    ('Elena Martins',    'Votorantim', 'Entregue',      'Site',        'Cartao',  1320.00, '2026-03-03'),
    ('Felipe Ramos',     'Itu',        'Entregue',      'Marketplace', 'Pix',      470.00, '2026-03-04'),
    ('Gabriela Nunes',   'Salto',      'Pendente',      'Loja',        'Dinheiro', 280.00, '2026-03-04'),
    ('Henrique Faria',   'Sorocaba',   'Em separacao',  'Site',        'Cartao',  1100.00, '2026-03-05'),
    ('Isabela Torres',   'Itu',        'Cancelado',     'Marketplace', 'Cartao',   980.00, '2026-03-05'),
    ('Joao Batista',     'Salto',      'Entregue',      'Site',        'Pix',      610.00, '2026-03-06'),
    ('Karen Prado',      'Sorocaba',   'Pendente',      'Marketplace', 'Cartao',  1490.00, '2026-03-06'),
    ('Lucas Melo',       'Itu',        'Em separacao',  'Site',        'Boleto',   430.00, '2026-03-07'),
    ('Marina Araujo',    'Votorantim', 'Entregue',      'Loja',        'Cartao',   260.00, '2026-03-07'),
    ('Nicolas Pereira',  'Sorocaba',   'Entregue',      'Marketplace', 'Pix',     1720.00, '2026-03-08'),
    ('Olivia Mendes',    'Salto',      'Pendente',      'Site',        'Cartao',   520.00, '2026-03-08'),
    ('Paulo Henrique',   'Itu',        'Entregue',      'Site',        'Pix',      880.00, '2026-03-09'),
    ('Renata Gomes',     'Sorocaba',   'Em separacao',  'Loja',        'Cartao',   640.00, '2026-03-09'),
    ('Sergio Duarte',    'Salto',      'Entregue',      'Marketplace', 'Pix',     1280.00, '2026-03-10'),
    ('Talita Rocha',     'Votorantim', 'Cancelado',     'Site',        'Boleto',   390.00, '2026-03-10'),
    ('Vinicius Nogueira','Itu',        'Pendente',      'Site',        'Cartao',   705.00, '2026-03-11'),
    ('Ana Lima',         'Sorocaba',   'Entregue',      'Loja',        'Dinheiro', 310.00, '2026-03-12'),
    ('Bruno Costa',      'Itu',        'Em separacao',  'Marketplace', 'Pix',     1020.00, '2026-03-12'),
    ('Carla Souza',      'Salto',      'Entregue',      'Site',        'Cartao',   455.00, '2026-03-13'),
    ('Diego Alves',      'Sorocaba',   'Pendente',      'Site',        'Pix',      935.00, '2026-03-13'),
    ('Elena Martins',    'Votorantim', 'Entregue',      'Marketplace', 'Cartao',   780.00, '2026-03-14'),
    ('Felipe Ramos',     'Itu',        'Cancelado',     'Loja',        'Dinheiro', 265.00, '2026-03-14'),
    ('Gabriela Nunes',   'Salto',      'Entregue',      'Site',        'Pix',      690.00, '2026-03-15'),
    ('Henrique Faria',   'Sorocaba',   'Pendente',      'Marketplace', 'Cartao',  1580.00, '2026-03-15'),
    ('Isabela Torres',   'Itu',        'Entregue',      'Site',        'Pix',      840.00, '2026-03-16'),
    ('Joao Batista',     'Salto',      'Em separacao',  'Loja',        'Boleto',   575.00, '2026-03-16');

-- ============================================================
-- Os SELECTs serao construidos junto com os alunos em aula.
-- ============================================================
