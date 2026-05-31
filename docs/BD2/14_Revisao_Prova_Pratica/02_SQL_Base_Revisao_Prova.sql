-- ============================================================
-- BD2 - Revisao para Prova Pratica
-- Base para treino de relatorio com filtros compostos
-- ============================================================

CREATE DATABASE IF NOT EXISTS bd2_revisao_prova_pratica;
USE bd2_revisao_prova_pratica;

DROP TABLE IF EXISTS chamados_revisao;

CREATE TABLE chamados_revisao (
    id_chamado INT AUTO_INCREMENT PRIMARY KEY,
    tecnico_responsavel VARCHAR(100) NOT NULL,
    setor VARCHAR(40) NOT NULL,
    status_chamado VARCHAR(30) NOT NULL,
    canal_abertura VARCHAR(30) NOT NULL,
    modalidade_atendimento VARCHAR(20) NOT NULL,
    prioridade VARCHAR(20) NOT NULL,
    sla_horas INT NOT NULL,
    horas_execucao INT NOT NULL,
    custo_pecas DECIMAL(10,2) NOT NULL,
    data_abertura DATE NOT NULL
);

INSERT INTO chamados_revisao (
    tecnico_responsavel,
    setor,
    status_chamado,
    canal_abertura,
    modalidade_atendimento,
    prioridade,
    sla_horas,
    horas_execucao,
    custo_pecas,
    data_abertura
)
VALUES
    ('Ana Lemos', 'Infraestrutura', 'Fechado', 'Portal', 'Remoto', 'Alta', 8, 5, 120.00, '2026-05-03'),
    ('Bruno Mota', 'Dados', 'Em andamento', 'Email', 'Presencial', 'Media', 16, 10, 300.00, '2026-05-03'),
    ('Carla Ribeiro', 'Suporte', 'Aberto', 'Telefone', 'Remoto', 'Alta', 10, 3, 0.00, '2026-05-04'),
    ('Diego Prado', 'Desenvolvimento', 'Fechado', 'Portal', 'Presencial', 'Alta', 20, 14, 340.00, '2026-05-04'),
    ('Elisa Costa', 'Infraestrutura', 'Fechado', 'Email', 'Remoto', 'Media', 12, 7, 50.00, '2026-05-05'),
    ('Felipe Sousa', 'Dados', 'Fechado', 'Telefone', 'Presencial', 'Alta', 18, 9, 200.00, '2026-05-05'),
    ('Gabriela Neri', 'Suporte', 'Em andamento', 'Portal', 'Remoto', 'Alta', 11, 11, 0.00, '2026-05-06'),
    ('Heitor Lima', 'Desenvolvimento', 'Aberto', 'Email', 'Presencial', 'Media', 14, 2, 350.00, '2026-05-06'),
    ('Iara Nunes', 'Infraestrutura', 'Fechado', 'Telefone', 'Remoto', 'Alta', 12, 13, 0.00, '2026-05-07'),
    ('Joao Teles', 'Financeiro', 'Fechado', 'Portal', 'Remoto', 'Alta', 8, 6, 80.00, '2026-05-07'),
    ('Karen Dias', 'Dados', 'Cancelado', 'Email', 'Presencial', 'Media', 10, 8, 120.00, '2026-05-08'),
    ('Lucas Vieira', 'Suporte', 'Fechado', 'Portal', 'Remoto', 'Alta', 9, 1, 0.00, '2026-05-08'),
    ('Marina Freitas', 'Desenvolvimento', 'Em andamento', 'Telefone', 'Presencial', 'Media', 12, 6, 240.00, '2026-05-09'),
    ('Nicolas Ramos', 'Infraestrutura', 'Fechado', 'Email', 'Remoto', 'Alta', 14, 12, 90.00, '2026-05-09'),
    ('Olivia Braga', 'Dados', 'Aberto', 'Portal', 'Presencial', 'Media', 15, 10, 500.00, '2026-05-10'),
    ('Paulo Mendes', 'Suporte', 'Fechado', 'Chat', 'Remoto', 'Alta', 8, 4, 0.00, '2026-05-10'),
    ('Renata Silva', 'Desenvolvimento', 'Fechado', 'Portal', 'Presencial', 'Baixa', 10, 5, 150.00, '2026-05-11'),
    ('Sergio Cunha', 'Dados', 'Cancelado', 'Telefone', 'Remoto', 'Alta', 6, 4, 0.00, '2026-05-11');