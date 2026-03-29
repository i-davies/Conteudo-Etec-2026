# Gabarito - Atividade QTS

> Este gabarito apresenta uma solucao possivel para a atividade avaliativa de QTS, com foco em implementacao de funcoes, validacao de regras e testes automatizados com `pytest`.

---

## Objetivos desta Revisao

Ao revisar este gabarito, voce deve:

1. Entender a implementacao das funcoes `calcular_total` e `validar_pedido`.
2. Revisar o comportamento esperado para pedidos validos e invalidos.
3. Interpretar testes automatizados com `assert`.
4. Identificar testes com falhas intencionais e corrigi-los para estudo da prova.

---

## Estrutura de Arquivos

```text
QTS/gabarito_atividade/
  cantina.py
  test_cantina.py
```

---

## Arquivo `cantina.py`

```python
def calcular_total(quantidade, valor_unitario):
    return quantidade * valor_unitario


def validar_pedido(item, quantidade, valor_unitario):
    if not item or quantidade <= 0 or valor_unitario <= 0:
        return "Pedido inválido"
    return "Pedido válido"
```

Pontos importantes:

- `calcular_total` aplica a regra direta de multiplicacao.
- `validar_pedido` considera invalido quando:
  - item vazio;
  - quantidade menor ou igual a zero;
  - valor unitario menor ou igual a zero.
- Retornos padronizados em texto: `Pedido válido` e `Pedido inválido`.

---

## Arquivo `test_cantina.py`

```python
# Arquivo de testes da cantina escolar
# Executar com: uv run pytest

from cantina import calcular_total, validar_pedido


# ============================================================
# Testes criados na branch main/master
# ============================================================

def test_calcular_total_dois_itens():
    assert calcular_total(2, 5.0) == 10.0


def test_calcular_total_um_item():
    assert calcular_total(1, 7.5) == 7.5


def test_pedido_valido():
    assert validar_pedido("Coxinha", 2, 3.50) == "Pedido válido"


def test_pedido_invalido_quantidade_zero():
    assert validar_pedido("Suco", 0, 5.0) == "Pedido inválido"


def test_pedido_invalido_item_vazio():
    assert validar_pedido("", 1, 5.0) == "Pedido inválido"


# Testes criados na branch feature/testes-cantina

def test_pedido_invalido_valor_negativo():
    # Falha intencional: valor negativo deve retornar "Pedido inválido", não "Pedido válido"
    assert validar_pedido("Suco", 1, -3.0) == "Pedido válido"


def test_calcular_total_quantidade_negativa():
    # Falha intencional: quantidade negativa não deve gerar total positivo
    assert calcular_total(-2, 5.0) == 10.0
```

Pontos importantes:

- O arquivo usa padrao `test_` em nomes de funcoes para o `pytest` localizar automaticamente.
- Ha testes validando cenarios corretos e incorretos.
- Existem falhas intencionais para treino de analise de defeito.

---

## Requisitos Obrigatorios Atendidos

- Projeto com implementacao em Python e testes com `pytest`.
- Presenca de duas funcoes obrigatorias no modulo de implementacao.
- Arquivo de testes com mais de 5 cenarios.
- Inclusao de testes com falha proposital para analise e correcao.
- Estrutura compativel com o fluxo de branch pedido na atividade.

---

## Pontos Importantes para a Prova

1. Saber diferenciar erro no codigo e erro no teste.
2. Entender o uso de `assert` para validar resultados esperados.
3. Executar testes com `uv run pytest`.
4. Ler mensagens de falha do `pytest` para localizar defeitos.
5. Garantir que as regras de negocio estejam cobertas por testes positivos e negativos.
6. Usar nomes claros de teste para facilitar manutencao.

## Proximo Passo

Execute os testes do gabarito, identifique quais falham intencionalmente e corrija cada caso explicando o motivo da correcao.
