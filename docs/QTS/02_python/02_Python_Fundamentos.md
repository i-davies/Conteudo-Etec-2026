# Python Fundamentos

Esta aula revisa apenas o necessário para começar em Python.

---

## Tipos básicos

```python
nome = "Ana"           # str
idade = 17             # int
altura = 1.65          # float
estudante = True       # bool
```

Python é de tipagem dinâmica: você não precisa declarar o tipo antes.

---

## Estruturas de dados principais

### Lista (mutável)

```python
notas = [8, 7, 9]
notas.append(10)
```

### Tupla (imutável)

```python
coordenada = (10, 20)
```

### Dicionário (chave e valor)

```python
aluno = {
    "nome": "Ana",
    "turma": "2A"
}
```

### Conjunto (elementos únicos)

```python
numeros = {1, 1, 2, 3}
print(numeros)  # {1, 2, 3}
```

---

## Type hints (opcional, mas recomendado)

```python
def somar(a: int, b: int) -> int:
    return a + b
```

Type hints ajudam na leitura e em ferramentas de análise, mas não mudam o funcionamento básico do Python.

---

## Constante por convenção

```python
from typing import Final

MAX_TENTATIVAS: Final[int] = 3
```

Em Python, constante é uma convenção de escrita (maiúsculas), não uma regra rígida da linguagem.

!!! tip "Resumo da aula"
    Aprendendo tipos e estruturas básicas, você já consegue ler e criar scripts simples em Python.
