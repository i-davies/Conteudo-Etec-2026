-- ============================================================
-- BD2 - Filtros Avancados: AND, OR, NOT, BETWEEN e IN
-- Script base para acompanhar os exemplos da teoria em aula
-- ============================================================

CREATE DATABASE IF NOT EXISTS filtros_avancados;
USE filtros_avancados;

DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS produtos;

CREATE TABLE produtos (
    id_produto   INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(120) NOT NULL,
    categoria    VARCHAR(60)  NOT NULL,
    preco        DECIMAL(10,2) NOT NULL
);

CREATE TABLE pedidos (
    id_pedido     INT AUTO_INCREMENT PRIMARY KEY,
    cliente       VARCHAR(100) NOT NULL,
    cidade        VARCHAR(80)  NOT NULL,
    status_pedido VARCHAR(30)  NOT NULL,
    valor_total   DECIMAL(10,2) NOT NULL,
    data_pedido   DATE NOT NULL
);

-- ============================================================
-- Carga inicial: produtos
-- ============================================================

INSERT INTO produtos (nome_produto, categoria, preco)
VALUES
    ('Teclado Mecanico',          'Informatica',  349.90),
    ('Mouse sem Fio',             'Informatica',  129.90),
    ('Monitor 24 polegadas',      'Eletronicos', 1299.00),
    ('Caixa de Som Bluetooth',    'Eletronicos',  249.90),
    ('Fone de Ouvido',            'Eletronicos',   89.90),
    ('Cadeira Gamer',             'Moveis',        899.50),
    ('Mesa de Escritorio',        'Moveis',        450.00),
    ('SQL para Iniciantes',       'Livros',         59.90),
    ('Clean Code',                'Livros',         79.90),
    ('Algoritmos Descomplicados', 'Livros',         69.00),
    ('Caneta Esferofica cx 50',   'Papelaria',      34.90),
    ('Caderno Universitario 200', 'Papelaria',      27.50);

-- ============================================================
-- Carga inicial: pedidos
-- ============================================================

INSERT INTO pedidos (cliente, cidade, status_pedido, valor_total, data_pedido)
VALUES
    ('Ana Lima',       'Sorocaba',   'Entregue',      350.00, '2026-01-10'),
    ('Bruno Costa',    'Itu',        'Pendente',       750.00, '2026-01-22'),
    ('Carla Souza',    'Salto',      'Em separacao',   180.00, '2026-02-05'),
    ('Diego Alves',    'Sorocaba',   'Cancelado',      920.00, '2026-02-14'),
    ('Elena Martins',  'Itu',        'Entregue',       620.00, '2026-02-28'),
    ('Felipe Ramos',   'Votorantim', 'Pendente',       410.00, '2026-03-08'),
    ('Gabriela Nunes', 'Sorocaba',   'Em separacao',   880.00, '2026-03-15'),
    ('Henrique Faria', 'Salto',      'Entregue',       230.00, '2026-03-20'),
    ('Isabela Torres', 'Itu',        'Cancelado',     1150.00, '2026-03-31'),
    ('Joao Batista',   'Sorocaba',   'Pendente',       560.00, '2026-04-02'),
    ('Karen Prado',    'Votorantim', 'Entregue',        95.00, '2026-04-18'),
    ('Lucas Melo',     'Salto',      'Em separacao',  1320.00, '2026-04-25');

-- ============================================================
-- Os SELECTs serao construidos junto com os alunos em aula.
-- ============================================================
