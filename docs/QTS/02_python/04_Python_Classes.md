# Python: Classes
Classe é um modelo para criar objetos.

---

## Exemplo simples

```python
class Aluno:
    def __init__(self, nome: str, turma: str) -> None:
        self.nome = nome
        self.turma = turma

    def apresentar(self) -> str:
        return f"Olá, sou {self.nome} da turma {self.turma}."


aluno1 = Aluno("Ana", "2A")
print(aluno1.apresentar())
```

### O que aparece no exemplo?

- `class Aluno`: define a classe;
- `__init__`: método executado quando o objeto é criado;
- `self`: referência ao próprio objeto;
- `apresentar`: método (função dentro da classe).

---

## Exemplo de carrinho (versão curta)

```python
class Carrinho:
    def __init__(self) -> None:
        self.itens: dict[str, float] = {}

    def adicionar(self, nome: str, preco: float) -> None:
        self.itens[nome] = preco

    def total(self) -> float:
        return sum(self.itens.values())


c = Carrinho()
c.adicionar("Camisa", 59.90)
c.adicionar("Meia", 15.00)
print(c.total())
```

---

## Quando usar classe?

Use classe quando fizer sentido agrupar:

- dados (atributos);
- comportamentos (métodos).

Se o código ainda é pequeno, funções simples podem ser suficientes.

!!! tip "Resumo da aula"
    Para começar, pense em classe como “objeto com dados + ações”.
