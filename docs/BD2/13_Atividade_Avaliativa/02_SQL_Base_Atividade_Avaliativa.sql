-- ============================================================
-- BD2 - Atividade Avaliativa
-- Base de dados para DQL, filtros avancados e select combinado
-- ============================================================

CREATE DATABASE IF NOT EXISTS bd2_avaliativa_consultas;
USE bd2_avaliativa_consultas;

DROP TABLE IF EXISTS pedidos;

CREATE TABLE pedidos (
    id_pedido       INT AUTO_INCREMENT PRIMARY KEY,
    cliente         VARCHAR(100) NOT NULL,
    cidade_entrega  VARCHAR(80)  NOT NULL,
    status_pedido   VARCHAR(30)  NOT NULL,
    canal_venda     VARCHAR(30)  NOT NULL,
    forma_pagamento VARCHAR(30)  NOT NULL,
    valor_total     DECIMAL(10,2) NOT NULL,
    data_pedido     DATE NOT NULL
);

-- ============================================================
-- Carga inicial: 30 pedidos com variacao de cidade, status,
-- canal, pagamento, data e faixa de valor.
-- ============================================================

INSERT INTO pedidos (cliente, cidade_entrega, status_pedido, canal_venda, forma_pagamento, valor_total, data_pedido)
VALUES
    ('Ana Lima',           'Sorocaba',   'Entregue',      'Site',        'Pix',      735.00, '2026-04-01'),
    ('Bruno Costa',        'Itu',        'Pendente',      'Loja',        'Cartao',   680.00, '2026-04-01'),
    ('Carla Souza',        'Salto',      'Em separacao',  'Marketplace', 'Boleto',  1190.00, '2026-04-02'),
    ('Diego Alves',        'Votorantim', 'Cancelado',     'Site',        'Pix',      910.00, '2026-04-02'),
    ('Elena Martins',      'Sorocaba',   'Entregue',      'Marketplace', 'Cartao',  1640.00, '2026-04-03'),
    ('Felipe Ramos',       'Itu',        'Entregue',      'Site',        'Pix',      870.00, '2026-04-03'),
    ('Gabriela Nunes',     'Salto',      'Pendente',      'Loja',        'Dinheiro', 540.00, '2026-04-04'),
    ('Henrique Faria',     'Sorocaba',   'Em separacao',  'Site',        'Cartao',  1420.00, '2026-04-04'),
    ('Isabela Torres',     'Itu',        'Cancelado',     'Marketplace', 'Cartao',   760.00, '2026-04-05'),
    ('Joao Batista',       'Salto',      'Entregue',      'Site',        'Pix',      980.00, '2026-04-05'),
    ('Karen Prado',        'Votorantim', 'Pendente',      'Marketplace', 'Cartao',  1510.00, '2026-04-06'),
    ('Lucas Melo',         'Sorocaba',   'Entregue',      'Loja',        'Boleto',   620.00, '2026-04-06'),
    ('Marina Araujo',      'Itu',        'Em separacao',  'Site',        'Pix',     1290.00, '2026-04-07'),
    ('Nicolas Pereira',    'Salto',      'Entregue',      'Marketplace', 'Cartao',   710.00, '2026-04-07'),
    ('Olivia Mendes',      'Sorocaba',   'Pendente',      'Site',        'Pix',      455.00, '2026-04-08'),
    ('Paulo Henrique',     'Votorantim', 'Entregue',      'Site',        'Cartao',  1730.00, '2026-04-08'),
    ('Renata Gomes',       'Itu',        'Em separacao',  'Marketplace', 'Pix',      905.00, '2026-04-09'),
    ('Sergio Duarte',      'Salto',      'Entregue',      'Site',        'Cartao',   680.00, '2026-04-09'),
    ('Talita Rocha',       'Sorocaba',   'Cancelado',     'Loja',        'Dinheiro', 590.00, '2026-04-10'),
    ('Vinicius Nogueira',  'Itu',        'Pendente',      'Site',        'Pix',     1110.00, '2026-04-10'),
    ('Wesley Tavares',     'Salto',      'Entregue',      'Marketplace', 'Boleto',   840.00, '2026-04-11'),
    ('Yara Fernandes',     'Votorantim', 'Em separacao',  'Site',        'Cartao',  1360.00, '2026-04-11'),
    ('Aline Barros',       'Sorocaba',   'Entregue',      'Marketplace', 'Pix',     1495.00, '2026-04-12'),
    ('Caio Mendonca',      'Itu',        'Pendente',      'Loja',        'Boleto',   520.00, '2026-04-12'),
    ('Debora Carvalho',    'Salto',      'Em separacao',  'Site',        'Pix',      965.00, '2026-04-13'),
    ('Eduardo Pires',      'Votorantim', 'Entregue',      'Marketplace', 'Cartao',   775.00, '2026-04-13'),
    ('Fernanda Siqueira',  'Sorocaba',   'Pendente',      'Site',        'Cartao',  1585.00, '2026-04-14'),
    ('Gustavo Neves',      'Itu',        'Entregue',      'Marketplace', 'Pix',      699.00, '2026-04-14'),
    ('Helena Prado',       'Salto',      'Cancelado',     'Site',        'Boleto',   720.00, '2026-04-15'),
    ('Igor Santana',       'Sorocaba',   'Em separacao',  'Loja',        'Pix',      880.00, '2026-04-15');

-- ============================================================
-- As consultas da atividade devem ser escritas pelos alunos.
-- ============================================================