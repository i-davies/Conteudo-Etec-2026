# Atividade Avaliativa em Sala

> Esta atividade vale nota e deve ser feita em sala de aula.

---

## Tema da atividade

Mini projeto integrador: Git + Python + erros e falhas + testes com `pytest`.

---

## Objetivo

Aplicar os conteúdos estudados até aqui em QTS em um único projeto simples, organizado e funcional.

---

## Cenário

Você deve montar um pequeno projeto Python que simule a validação de notas de um aluno.

O projeto precisa:

- ter funções em Python;
- conter ao menos um defeito corrigido durante a atividade;
- possuir testes automatizados com `pytest`;
- registrar o processo com Git.

---

## Requisitos obrigatórios

1. Criar o projeto na pasta:
   - `QTS/05_aula/atividade_avaliativa_nome_sobrenome`
2. Criar o arquivo `boletim.py` com pelo menos estas funções:
   - `calcular_media(n1, n2)`
   - `verificar_aprovacao(media)`
3. Regra esperada:
   - média maior ou igual a `6` retorna `"Aprovado"`;
   - média menor que `6` retorna `"Reprovado"`.
4. Criar o arquivo `test_boletim.py` com pelo menos 3 testes:
   - teste da média correta;
   - teste de aluno aprovado;
   - teste de aluno reprovado.
5. Executar os testes com `uv run pytest`.
6. Fluxo de Git obrigatório:
   - iniciar repositório ou usar repositório já criado;
   - criar branch `feature/testes-boletim`;
   - realizar pelo menos 3 commits com mensagens claras;
   - finalizar com merge na `main`.
7. Entregar o projeto com os arquivos principais e histórico Git funcionando.

---

## Requisitos opcionais (bônus)

- Criar uma função extra `situacao_final(n1, n2, faltas)`.
- Adicionar teste para entrada inválida.
- Criar `README.md` curto explicando como executar o projeto.

---

## Sugestão de estrutura

```text
QTS/05_aula/atividade_avaliativa_nome_sobrenome/
  boletim.py
  test_boletim.py
  README.md
```

---

## Entrega

Entregar:

- pasta do projeto com os arquivos Python;
- testes executando corretamente;
- histórico Git com branch, commits e merge;
- link do repositório, se a turma estiver usando GitHub.

---

## Critérios de correção

- 3,0 pts: funções Python implementadas corretamente.
- 3,0 pts: testes com `pytest` cobrindo os cenários obrigatórios.
- 2,0 pts: identificação e correção de defeito no código.
- 2,0 pts: uso correto de Git no fluxo solicitado.

Bônus até +1,0:

- implementação de itens opcionais com qualidade.

---

## Checklist de entrega

- [ ] Projeto criado na pasta correta.
- [ ] `boletim.py` implementado.
- [ ] `test_boletim.py` criado com pelo menos 3 testes.
- [ ] Testes executados com sucesso.
- [ ] Branch, commits e merge realizados.
