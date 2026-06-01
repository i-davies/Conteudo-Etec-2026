# Revisão para Prova Prática

## Exercícios

??? example "Desafio 1: preparar ambiente de revisão"
    Execute a base da revisão no arquivo:

    - [02_SQL_Base_Revisao_Prova.sql](02_SQL_Base_Revisao_Prova.sql)

    Use o banco `bd2_revisao_prova_pratica` para realizar os exercícios.

??? example "Desafio 2: consulta integradora principal"
    Monte uma consulta única que retorne:

    - `tecnico_responsavel`
    - `setor`
    - `status_chamado`
    - `canal_abertura`
    - `modalidade_atendimento`
    - `prioridade`
    - `horas_execucao`
    - `custo_pecas`
    - `data_abertura`

    A consulta deve considerar, ao mesmo tempo:

    - setor em `Infraestrutura`, `Desenvolvimento`, `Dados` e `Suporte`;
    - status diferente de `Cancelado`;
    - horas de execução entre `2` e `14`;
    - prioridade em `Alta` ou `Media`;
    - primeira regra composta:
        - canal em `Portal` ou `Email`,
        - ou canal `Telefone` com prioridade `Alta`;
    - segunda regra composta:
        - modalidade `Remoto` com `sla_horas` menor ou igual a `12`,
        - ou modalidade `Presencial` com `custo_pecas` menor ou igual a `350`.

    Ordene por:

    - `setor` (A-Z);
    - `data_abertura` (mais recente para mais antiga);
    - `horas_execucao` (maior para menor).

    Resultado esperado do relatório:

    - `9` linhas.

??? tip "Estratégia para não errar precedência lógica"
    Monte o `WHERE` em blocos e valide cada bloco separadamente antes de unir tudo. Sempre use parênteses quando misturar `AND` e `OR`.

---

## Checklist

- [ ] Executei a base da revisão sem erros.
- [ ] Montei a consulta integradora principal com todas as regras.
- [ ] Apliquei corretamente as duas regras compostas.
- [ ] Usei parênteses para controlar a precedência lógica.
- [ ] Apliquei `ORDER BY` com mais de um critério.
- [ ] Conferi se o resultado final retorna `9` linhas.
