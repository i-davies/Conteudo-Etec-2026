# Atividade Avaliativa em Sala

> Esta atividade vale nota e deve ser feita individualmente em sala de aula.

---

## Tema da atividade

Teste de caixa branca com Python e Pytest em um cenário de cálculo de desconto.

## Objetivo

Aplicar os conteúdos de QTS sobre decisão condicional, cobertura de ramos e testes automatizados com `pytest`, utilizando fluxo de versionamento em branch.

## Contexto da prática

Nesta atividade, você vai evoluir o projeto `fastapi_qts` já utilizado na aula.

O foco é implementar a função de desconto, mapear os caminhos de decisão e criar testes que cubram todos os ramos do código.

## Requisitos obrigatórios

- criar e trabalhar em uma branch específica para esta atividade;
- implementar a função `calcular_desconto(valor, cliente_vip)`;
- mapear explicitamente os caminhos de decisão antes da bateria de testes;
- criar testes para todos os ramos (`if` e `else`) da função;
- incluir testes de borda para os valores informados no enunciado;
- executar os testes com `uv run pytest -v`;
- corrigir falhas encontradas até obter suíte passando.

---

## Passo a passo guiado

### Preparação do repositório

1. Acesse o projeto `fastapi_qts`.
2. Crie uma branch de trabalho para a atividade.
3. Confirme que está na branch correta antes de iniciar.

Nome sugerido para a branch:

```text
feature/descontos-atividade
```

??? tip "Boas práticas de versionamento"
    Faça commits pequenos por etapa: implementação da função, mapeamento de decisões, testes de ramos e testes de borda.

### Implementação da função

Implemente a função `calcular_desconto(valor, cliente_vip)` com as regras:

- se `valor` for menor ou igual a `0`, retornar `0`;
- se `cliente_vip` for `True`, aplicar desconto de `20%`;
- se `cliente_vip` for `False`, aplicar desconto de `10%`.

Organize os arquivos seguindo a estrutura abaixo:

```text
fastapi_qts/
    app/
        descontos/
            descontos.py
    tests/
        descontos/
            test_descontos.py
```

### Construção dos testes

Crie testes cobrindo, no mínimo, os cenários:

- valor inválido (`0` ou negativo);
- cliente VIP com valor válido;
- cliente não VIP com valor válido;
- valor exatamente `0`;
- valor positivo muito pequeno (exemplo: `0.01`);
- valor maior (exemplo: `200`).

### Observação sobre comparação de números decimais

Nesta atividade, não utilize `pytest.approx`, pois este recurso ainda não foi trabalhado em aula.

Para o caso de `0.01`, use `round` no resultado antes da comparação.

Exemplo simples:

```python
    assert round(resultado, 3) == 0.009
```

### Execução e validação

Execute a suíte de testes:

```bash
uv run pytest -v
```

Corrija o que for necessário até todos os testes passarem.

---

## Critérios de Correção

- 2,0 pts: implementação correta da função `calcular_desconto` conforme as regras do enunciado.
- 2,0 pts: mapeamento claro dos caminhos de decisão da função.
- 3,0 pts: testes cobrindo todos os ramos e cenários mínimos solicitados.
- 1,5 pts: testes de borda implementados e comportamento validado com consistência.
- 1,5 pts: organização do projeto, uso correto da branch e commits coerentes.

## Entrega

- enviar o link do repositório com a branch da atividade;
- evidencias do funcionamento (prints ou vídeo curto) dos testes;
- identificar no envio: turma, nome completo e nome da branch.

## Checklist

- [ ] Criei e utilizei uma branch específica para a atividade.
- [ ] Implementei corretamente a função `calcular_desconto`.
- [ ] Mapeei todos os caminhos da decisão (`if` e `else`).
- [ ] Escrevi testes para ramos principais e casos de borda.
- [ ] Executei `uv run pytest -v` e validei a suíte passando.
- [ ] Mantive a atividade sem uso de `pytest.approx`.
