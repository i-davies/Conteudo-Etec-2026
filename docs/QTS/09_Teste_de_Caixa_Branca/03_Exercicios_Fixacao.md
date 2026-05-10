# Exercícios de Fixação: Teste de Caixa Branca

## Exercícios

??? example "Desafio 1: mapear decisões da função"
    Na branch `feature/teste-caixa-branca`, trabalhe no projeto `fastapi_qts` e crie uma função `calcular_desconto(valor, cliente_vip)` com regras:

    - se `valor` for menor ou igual a `0`, retornar `0`;
    - se `cliente_vip` for `True`, aplicar desconto de `20%`;
    - se `cliente_vip` for `False`, aplicar desconto de `10%`.

        Antes de testar, escreva quais caminhos de decisão existem.

        Estrutura sugerida:

        ```text
        fastapi_qts/
            app/
                descontos/
                    descontos.py
            tests/
                descontos/
                    test_descontos.py
        ```

??? example "Desafio 2: cobrir todos os if/else"
    Crie testes com `pytest` para todos os ramos da função dentro de `tests/descontos/test_descontos.py`.

    Cenários mínimos esperados:

    - valor inválido (`0` ou negativo);
    - cliente VIP com valor válido;
    - cliente não VIP com valor válido.

??? example "Desafio 3: testar bordas"
    Adicione testes de borda para garantir previsibilidade:

    - valor exatamente `0`;
    - valor muito pequeno positivo (exemplo: `0.01`);
    - valor maior (exemplo: `200`).

---

## Checklist

- [ ] Identifiquei todos os caminhos da função.
- [ ] Criei a branch da aula antes de começar a implementação.
- [ ] Organizei o código do projeto em `app/` e os testes em `tests/`.
- [ ] Criei testes para cada `if/else`.
- [ ] Executei os testes com `uv run pytest -v`.
- [ ] Corrigi falhas encontradas até todos passarem.
- [ ] Registrei uma justificativa sobre os cenários críticos.
