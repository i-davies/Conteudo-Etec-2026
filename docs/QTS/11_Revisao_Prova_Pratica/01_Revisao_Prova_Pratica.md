# Revisão para Prova Prática

## Exercícios

??? example "Desafio 1: preparar branch e cenário"
    Use o projeto já configurado em aula e crie a branch:

    ```text
    feature/revisao-2-bimestre
    ```

    Nesta revisão, você vai implementar uma regra mais completa de pontuação de atendimento e criar os testes automatizados.

    Crie a função `calcular_pontuacao_atendimento(tempo_minutos, resolvido_primeiro_contato, reincidencia)` com as regras:

    - se `tempo_minutos` for menor ou igual a `0`, retornar `0`;
    - se `resolvido_primeiro_contato` for `True` e `tempo_minutos` menor ou igual a `10`, base `10`;
    - se `resolvido_primeiro_contato` for `True` e `tempo_minutos` entre `11` e `20`, base `8`;
    - se `resolvido_primeiro_contato` for `True` e `tempo_minutos` maior que `20`, base `6`;
    - se `resolvido_primeiro_contato` for `False` e `tempo_minutos` menor ou igual a `10`, base `5`;
    - se `resolvido_primeiro_contato` for `False` e `tempo_minutos` entre `11` e `20`, base `3`;
    - se `resolvido_primeiro_contato` for `False` e `tempo_minutos` maior que `20`, base `1`;
    - se `reincidencia` for `True`, subtrair `2` pontos da base;
    - a pontuação final não pode ser menor que `0`.

    Depois, crie a função `classificar_atendimento(pontuacao)`:

    - `pontuacao >= 9`: retornar `"Excelente"`;
    - `pontuacao >= 7`: retornar `"Bom"`;
    - `pontuacao >= 4`: retornar `"Regular"`;
    - caso contrário: retornar `"Crítico"`.

    Estrutura sugerida:

    ```text
    fastapi_qts/
        app/
            atendimento/
                pontuacao.py
        tests/
            atendimento/
                test_pontuacao.py
    ```

??? example "Desafio 2: mapear caminhos de caixa branca"
    Antes de escrever os testes, mapeie os caminhos de decisão das duas funções.

    Seu mapeamento deve considerar, no mínimo:

    - entrada inválida (`tempo_minutos <= 0`);
    - resolvido no primeiro contato com tempo até `10`;
    - resolvido no primeiro contato com tempo entre `11` e `20`;
    - resolvido no primeiro contato com tempo acima de `20`;
    - não resolvido no primeiro contato com tempo até `10`;
    - não resolvido no primeiro contato com tempo entre `11` e `20`;
    - não resolvido no primeiro contato com tempo acima de `20`;
    - impacto de `reincidencia = True`;
    - faixas de classificação (`Excelente`, `Bom`, `Regular`, `Crítico`).

??? example "Desafio 3: criar testes automatizados"
    Em `tests/atendimento/test_pontuacao.py`, crie testes com `pytest` para todos os caminhos mapeados.

    Casos mínimos esperados:

    - `tempo_minutos = 0`;
    - `tempo_minutos = -3`;
    - `tempo_minutos = 10` com resolução no primeiro contato e sem reincidência;
    - `tempo_minutos = 11` com resolução no primeiro contato e sem reincidência;
    - `tempo_minutos = 21` com resolução no primeiro contato e com reincidência;
    - `tempo_minutos = 10` sem resolução no primeiro contato e sem reincidência;
    - `tempo_minutos = 15` sem resolução no primeiro contato e com reincidência;
    - `tempo_minutos = 25` sem resolução no primeiro contato e com reincidência;
    - testes para `classificar_atendimento` nas quatro faixas.
        1. primeiro calcular o índice com `calcular_pontuacao_atendimento`;
        2. depois classificar com `classificar_atendimento`;
        3. por fim validar com `assert` a classificação final esperada.
        4. criar testes para as quatro classificações finais: `Excelente`, `Bom`, `Regular` e `Crítico`, usando esse fluxo completo;

??? example "Desafio 4: executar e validar"
    Rode a suíte com:

    ```bash
    uv run pytest -v
    ```

    Corrija o código e os testes até tudo passar.

??? tip "Dica para revisão"
    Em caixa branca, o foco não é apenas testar entradas diferentes, mas garantir que cada decisão do código foi realmente percorrida e validada com assertivas claras.

---

## Checklist

- [ ] Criei e utilizei a branch `feature/revisao-2-bimestre`.
- [ ] Implementei a função `calcular_pontuacao_atendimento`.
- [ ] Implementei a função `classificar_atendimento`.
- [ ] Mapeei todos os caminhos de decisão antes dos testes.
- [ ] Escrevi testes para todos os ramos (`if` e `else`).
- [ ] Executei `uv run pytest -v` e analisei as falhas.
- [ ] Corrigi os testes e o código até a suíte passar.
