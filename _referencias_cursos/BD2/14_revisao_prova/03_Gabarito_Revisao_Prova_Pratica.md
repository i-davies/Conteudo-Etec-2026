# Gabarito - Revisão para Prova Prática

> Este gabarito apresenta uma solução possível para o relatório da revisão.

---

## Consulta oficial

```sql
USE bd2_revisao_prova_pratica;

SELECT
    tecnico_responsavel,
    setor,
    status_chamado,
    canal_abertura,
    modalidade_atendimento,
    prioridade,
    horas_execucao,
    custo_pecas,
    data_abertura
FROM chamados_revisao
WHERE setor IN ('Infraestrutura', 'Desenvolvimento', 'Dados', 'Suporte')
  AND status_chamado <> 'Cancelado'
  AND horas_execucao BETWEEN 2 AND 14
  AND prioridade IN ('Alta', 'Media')
  AND (
      canal_abertura IN ('Portal', 'Email')
      OR (canal_abertura = 'Telefone' AND prioridade = 'Alta')
  )
  AND (
      (modalidade_atendimento = 'Remoto' AND sla_horas <= 12)
      OR (modalidade_atendimento = 'Presencial' AND custo_pecas <= 350)
  )
ORDER BY
    setor ASC,
    data_abertura DESC,
    horas_execucao DESC;
```

---

## Validação da quantidade de linhas

```sql
USE bd2_revisao_prova_pratica;

SELECT COUNT(*) AS total_linhas
FROM chamados_revisao
WHERE setor IN ('Infraestrutura', 'Desenvolvimento', 'Dados', 'Suporte')
  AND status_chamado <> 'Cancelado'
  AND horas_execucao BETWEEN 2 AND 14
  AND prioridade IN ('Alta', 'Media')
  AND (
      canal_abertura IN ('Portal', 'Email')
      OR (canal_abertura = 'Telefone' AND prioridade = 'Alta')
  )
  AND (
      (modalidade_atendimento = 'Remoto' AND sla_horas <= 12)
      OR (modalidade_atendimento = 'Presencial' AND custo_pecas <= 350)
  );
```

Resultado esperado: `9` linhas.

---

## Checklist rápido de correção

- A consulta retorna somente os campos pedidos.
- As duas regras compostas foram aplicadas com parênteses.
- O status `Cancelado` foi excluído.
- A ordenação foi feita por setor, data e horas.
- O total final do relatório é `9`.
