# Atividade Avaliativa em Sala

> Esta atividade vale nota e deve ser feita em sala de aula.

---

## Tema da Atividade

Mini sistema de validação de pedidos de uma cantina escolar (QTS + Git + testes com `pytest`).

## Objetivo

Aplicar os conteúdos estudados em QTS em um projeto mais autônomo, com implementação, testes, identificação de defeitos e fluxo de versionamento com Git.

## Escopo do Sistema

O sistema deve simular o processamento de pedidos de uma cantina escolar.

Crie **duas funções**:

**`calcular_total(quantidade, valor_unitario)`**

- Recebe a quantidade e o valor unitário de um item;
- Retorna o total multiplicando os dois valores.

**`validar_pedido(item, quantidade, valor_unitario)`**

- Recebe os três campos do pedido;
- Retorna `"Pedido válido"` se:
    - `item` não for vazio;
    - `quantidade` for maior que zero;
    - `valor_unitario` for maior que zero;
- Retorna `"Pedido inválido"` em qualquer outro caso.

## Requisitos obrigatórios

- Iniciar o projeto com UV e adicionar o Pytest como dependência.
- Criar 2 arquivos Python:
      - 1 arquivo de implementação com as duas funções do escopo;
      - 1 arquivo de testes.
- Os testes devem usar `assert` para verificar o comportamento de `calcular_total` e `validar_pedido`.
- Criar no mínimo 5 testes automatizados com `pytest`.
- Distribuição obrigatória dos testes por branch:
  - parte dos testes deve ser criada na `main` (ou `master`);
  - parte dos testes deve ser criada na branch `feature`.
- Incluir ao menos 1 teste com valor errado propositalmente para observar a falha no `pytest` (sem usar decorator de exceção).
- Fluxo de Git obrigatório:
  - criar branch `feature/testes-cantina`;

## Entrega

- Dentro do link da disciplina no Google Classroom, localizar a atividade para registro da entrega:
  - [Link da atividade](https://classroom.google.com/c/Nzk2Nzk3ODkwNzE4?cjc=h33cnw4d)
- Na entrega, informar o nome completo e anexar o link do repositório, quando solicitado.

---

## Critérios de Correção

- 2,0 pts: organização do projeto e inicialização correta com UV.
- 2,0 pts: regras implementadas de forma coerente com o tema.
- 3,0 pts: qualidade e cobertura dos testes (`mínimo 5`), incluindo falhas esperadas.
- 1,5 pts: identificação e correção de defeito no código.
- 1,5 pts: uso correto de Git (branch e commits).

