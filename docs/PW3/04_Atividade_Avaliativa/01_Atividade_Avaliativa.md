# Atividade Avaliativa em Sala

> Esta atividade vale nota e deve ser feita em sala de aula.

---

## Tema da atividade

Mini projeto integrador: Git + HTTP com PHP + retorno em JSON + consumo com Fetch.

---

## Objetivo

Aplicar os conteudos estudados ate aqui em PW3 em um unico projeto funcional.

---

## Cenario

Voce deve montar um mini sistema com duas partes:

- uma API simples em PHP retornando JSON;
- uma pagina com JavaScript usando `fetch()` para consumir essa API.

---

## Requisitos obrigatorios

1. Criar projeto na pasta:
   - `PW3/04_aula/atividade_avaliativa_nome_sobrenome`
2. Criar `api_turma.php` retornando JSON valido com:
   - nome da turma,
   - periodo,
   - ao menos 3 disciplinas.
3. Definir header `Content-Type: application/json`.
4. Criar `index.php` com interface para exibir os dados da API.
   - usar estrutura HTML completa (padrao base tipo `!` do Emmet);
   - usar `<?php ... ?>` apenas nos trechos que realmente precisarem de PHP.
5. Criar `app.js` usando `fetch()` para consumir `api_turma.php`.
6. Exibir os dados no HTML (nao somente no console).
7. Tratar erro de requisicao com mensagem ao usuario.
8. Fluxo de Git obrigatorio:
   - criar branch `feature/api-fetch`;
   - realizar pelo menos 3 commits com mensagens claras;
   - fazer merge na `main`.
---

## Requisitos opcionais (bonus)

- Adicionar filtro por parametro na API (`?disciplina=...`).
- Exibir status HTTP na tela.
- Melhorar visual com CSS.

---

## Entrega

Entregar:

- pasta do projeto com `index.php`, `api_turma.php`, `app.js` e opcionais;
- historico Git com branch, commits e merge;
- Link do repositório no GitHub.

---

## Criterios de correcao

- 3,0 pts: API PHP em JSON funcionando corretamente.
- 3,0 pts: consumo com `fetch()` e exibição em tela.
- 2,0 pts: tratamento de erro e organização do código.
- 2,0 pts: uso correto de Git (branch + commits + merge).

Bonus ate +1,0:

- implementacao de itens opcionais com qualidade.

---

## Checklist de entrega

- [ ] API PHP retorna JSON valido.
- [ ] `index.php` e `app.js` funcionam no Laragon.
- [ ] Dados da API aparecem na tela.
- [ ] Erros sao tratados com mensagem.
- [ ] Fluxo de Git concluído.
