-- ============================================================
-- Gabarito: Exercicios de Fixacao - SELECT com Varias Condicoes
-- Banco: bd2_selects_combinados
-- ============================================================

CREATE DATABASE IF NOT EXISTS bd2_selects_combinados;
USE bd2_selects_combinados;

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

INSERT INTO pedidos (cliente, cidade_entrega, status_pedido, canal_venda, forma_pagamento, valor_total, data_pedido)
VALUES
    ('Ana Lima',        'Sorocaba',   'Entregue',      'Site',        'Pix',     540.00, '2026-03-05'),
    ('Bruno Costa',     'Itu',        'Pendente',      'Loja',        'Cartao',  320.00, '2026-03-06'),
    ('Carla Souza',     'Salto',      'Em separacao',  'Marketplace', 'Boleto',  890.00, '2026-03-07'),
    ('Diego Alves',     'Sorocaba',   'Cancelado',     'Site',        'Pix',     760.00, '2026-03-09'),
    ('Elena Martins',   'Votorantim', 'Entregue',      'Site',        'Cartao', 1320.00, '2026-03-10'),
    ('Felipe Ramos',    'Itu',        'Entregue',      'Marketplace', 'Pix',     470.00, '2026-03-11'),
    ('Gabriela Nunes',  'Salto',      'Pendente',      'Loja',        'Dinheiro', 280.00, '2026-03-12'),
    ('Henrique Faria',  'Sorocaba',   'Em separacao',  'Site',        'Cartao', 1100.00, '2026-03-13'),
    ('Isabela Torres',  'Itu',        'Cancelado',     'Marketplace', 'Cartao',  980.00, '2026-03-15'),
    ('Joao Batista',    'Salto',      'Entregue',      'Site',        'Pix',     610.00, '2026-03-16'),
    ('Karen Prado',     'Sorocaba',   'Pendente',      'Marketplace', 'Cartao', 1490.00, '2026-03-17'),
    ('Lucas Melo',      'Itu',        'Em separacao',  'Site',        'Boleto',  430.00, '2026-03-18'),
    ('Marina Araujo',   'Votorantim', 'Entregue',      'Loja',        'Cartao',  260.00, '2026-03-19'),
    ('Nicolas Pereira', 'Sorocaba',   'Entregue',      'Marketplace', 'Pix',    1720.00, '2026-03-20'),
    ('Olivia Mendes',   'Salto',      'Pendente',      'Site',        'Cartao',  520.00, '2026-03-21'),
    ('Paulo Henrique',  'Itu',        'Entregue',      'Site',        'Pix',     880.00, '2026-03-22'),
    ('Renata Gomes',    'Sorocaba',   'Em separacao',  'Loja',        'Cartao',  640.00, '2026-03-23'),
    ('Sergio Duarte',   'Salto',      'Entregue',      'Marketplace', 'Pix',    1280.00, '2026-03-24'),
    ('Talita Rocha',    'Votorantim', 'Cancelado',     'Site',        'Boleto',  390.00, '2026-03-25'),
    ('Vinicius Nogueira','Itu',       'Pendente',      'Site',        'Cartao',  705.00, '2026-03-26');

-- ============================================================
-- Parte A: Selecao e Filtro Inicial
-- ============================================================

-- Ex 1
SELECT cliente, cidade_entrega, status_pedido, valor_total
FROM pedidos;

-- Ex 2
SELECT *
FROM pedidos
WHERE status_pedido = 'Entregue'
  AND valor_total >= 500;

-- Ex 3
SELECT *
FROM pedidos
WHERE forma_pagamento IN ('Pix', 'Cartao');

-- ============================================================
-- Parte B: Filtros Combinados
-- ============================================================

-- Ex 4
SELECT *
FROM pedidos
WHERE cidade_entrega IN ('Sorocaba', 'Itu')
  AND valor_total BETWEEN 300 AND 1300;

-- Ex 5
SELECT *
FROM pedidos
WHERE status_pedido <> 'Cancelado'
  AND canal_venda = 'Site';

-- Ex 6
SELECT *
FROM pedidos
WHERE (status_pedido = 'Em separacao' OR status_pedido = 'Pendente')
  AND valor_total > 400;

-- ============================================================
-- Parte C: Ordenacao e Organizacao
-- ============================================================

-- Ex 7
SELECT cliente, cidade_entrega, valor_total, data_pedido
FROM pedidos
WHERE status_pedido <> 'Cancelado'
ORDER BY data_pedido DESC, valor_total DESC;

-- Ex 8
SELECT *
FROM pedidos
WHERE canal_venda = 'Marketplace'
  AND forma_pagamento = 'Cartao'
ORDER BY valor_total DESC;

-- ============================================================
-- Desafio de Consolidacao
-- ============================================================

-- Ex 9
SELECT cliente, cidade_entrega, status_pedido, forma_pagamento, valor_total
FROM pedidos
WHERE cidade_entrega IN ('Sorocaba', 'Itu', 'Salto')
  AND status_pedido <> 'Cancelado'
  AND valor_total BETWEEN 450 AND 1600
  AND forma_pagamento IN ('Pix', 'Cartao')
ORDER BY cidade_entrega ASC, valor_total DESC;
