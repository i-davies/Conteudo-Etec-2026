-- ============================================================
-- Gabarito: Exercicios de Fixacao - Filtros Avancados
-- Banco: comercial_filtros
-- ============================================================

CREATE DATABASE IF NOT EXISTS comercial_filtros;
USE comercial_filtros;

DROP TABLE IF EXISTS pedidos;

CREATE TABLE pedidos (
    id_pedido     INT AUTO_INCREMENT PRIMARY KEY,
    cliente       VARCHAR(100) NOT NULL,
    cidade        VARCHAR(80)  NOT NULL,
    status_pedido VARCHAR(30)  NOT NULL,
    valor_total   DECIMAL(10,2) NOT NULL,
    data_pedido   DATE NOT NULL
);

INSERT INTO pedidos (cliente, cidade, status_pedido, valor_total, data_pedido)
VALUES
    ('Ana Lima',       'Sorocaba', 'Entregue',      350.00, '2026-01-10'),
    ('Bruno Costa',    'Itu',      'Pendente',       750.00, '2026-01-22'),
    ('Carla Souza',    'Salto',    'Em separacao',   180.00, '2026-02-05'),
    ('Diego Alves',    'Sorocaba', 'Cancelado',      920.00, '2026-02-14'),
    ('Elena Martins',  'Itu',      'Entregue',       620.00, '2026-02-28'),
    ('Felipe Ramos',   'Votorantim','Pendente',      410.00, '2026-03-08'),
    ('Gabriela Nunes', 'Sorocaba', 'Em separacao',   880.00, '2026-03-15'),
    ('Henrique Faria', 'Salto',    'Entregue',       230.00, '2026-03-20'),
    ('Isabela Torres', 'Itu',      'Cancelado',     1150.00, '2026-03-31'),
    ('Joao Batista',   'Sorocaba', 'Pendente',       560.00, '2026-04-02'),
    ('Karen Prado',    'Votorantim','Entregue',       95.00, '2026-04-18'),
    ('Lucas Melo',     'Salto',    'Em separacao',  1320.00, '2026-04-25');

-- ============================================================
-- Parte A: Filtros Diretos
-- ============================================================

-- Ex 1. Pedidos com valor_total entre 200 e 800
SELECT *
FROM pedidos
WHERE valor_total BETWEEN 200 AND 800;

-- Ex 2. Pedidos das cidades Sorocaba, Itu e Salto usando IN
SELECT *
FROM pedidos
WHERE cidade IN ('Sorocaba', 'Itu', 'Salto');

-- Ex 3. Pedidos que NAO estao com status Entregue
SELECT *
FROM pedidos
WHERE NOT status_pedido = 'Entregue';

-- ============================================================
-- Parte B: Combinacoes Logicas
-- ============================================================

-- Ex 4. Cidade Sorocaba AND valor acima de 500
SELECT *
FROM pedidos
WHERE cidade = 'Sorocaba' AND valor_total > 500;

-- Ex 5. Cidade Itu OR valor acima de 1000
SELECT *
FROM pedidos
WHERE cidade = 'Itu' OR valor_total > 1000;

-- Ex 6. Status Pendente ou Em separacao AND valor entre 100 e 900
SELECT *
FROM pedidos
WHERE (status_pedido = 'Pendente' OR status_pedido = 'Em separacao')
  AND valor_total BETWEEN 100 AND 900;

-- ============================================================
-- Parte C: Controle de Precedencia
-- ============================================================

-- Ex 7a. Sem parenteses: AND e avaliado antes de OR
--        Retorna: cidade Sorocaba com valor > 500, MAIS todos os pedidos de Itu
SELECT *
FROM pedidos
WHERE cidade = 'Sorocaba' AND valor_total > 500 OR cidade = 'Itu';

-- Ex 7b. Com parenteses: OR e avaliado primeiro
--        Retorna: pedidos de Sorocaba ou Itu, desde que o valor seja acima de 500
SELECT *
FROM pedidos
WHERE (cidade = 'Sorocaba' OR cidade = 'Itu') AND valor_total > 500;

-- Ex 8.
-- Sem parenteses, o AND une "Sorocaba com valor > 500" e depois o OR adiciona
-- todos os pedidos de Itu sem restricao de valor.
-- Com parenteses, o OR primeiro une as cidades e o AND aplica o filtro de
-- valor sobre o conjunto inteiro, reduzindo o resultado.

-- ============================================================
-- Desafio Opcional
-- ============================================================

-- Pedidos de mar/abr 2026, em Sorocaba/Itu/Salto, excluindo Cancelado
SELECT *
FROM pedidos
WHERE data_pedido BETWEEN '2026-03-01' AND '2026-04-30'
  AND cidade IN ('Sorocaba', 'Itu', 'Salto')
  AND NOT status_pedido = 'Cancelado';
