# Python: Funções

Função é um bloco de código que faz uma tarefa específica.

---

## Exemplo básico

```python
def saudacao(nome: str) -> None:
    print(f"Olá, {nome}!")


saudacao("Turma")
```

- `def` cria a função;
- `nome` é o parâmetro de entrada;
- `-> None` indica que não retorna valor.

---

## Exemplo com retorno

```python
def calcular_total(precos: list[float]) -> float:
    return sum(precos)


valores = [10.0, 25.5, 4.5]
print(calcular_total(valores))
```

Quando usamos `return`, a função devolve um resultado.

---

## Exemplo prático inspirado em carrinho

```python
def adicionar_item(carrinho: dict[str, float], item: str, preco: float) -> None:
    carrinho[item] = preco


meu_carrinho: dict[str, float] = {}
adicionar_item(meu_carrinho, "Caderno", 25.0)
adicionar_item(meu_carrinho, "Caneta", 5.0)

print(meu_carrinho)
```

---

## Boas práticas para iniciantes

- Dê nomes claros para funções (`calcular_media`, `adicionar_item`);
- Faça funções curtas (uma responsabilidade por função);
- Evite lógica complexa no começo.

!!! tip "Resumo da aula"
    Comece com funções pequenas. Isso deixa o código mais organizado e fácil de testar.
