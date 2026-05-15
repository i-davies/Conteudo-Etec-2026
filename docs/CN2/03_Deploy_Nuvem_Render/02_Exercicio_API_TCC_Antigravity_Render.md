# Exercício - API do TCC com Antigravity + Deploy no Render

> Objetivo: criar uma API Laravel alinhada ao tema do TCC, gerar uma landing page com apoio de IA e publicar no Render.

---

## Cenário

Você vai atuar como desenvolvedor da primeira versão online do seu TCC.

Nesta atividade, o projeto precisa entregar dois resultados no mesmo repositório:

- uma API com endpoints coerentes com o tema;
- uma landing page simples para apresentar o projeto.

---

## Ferramenta de IA obrigatória

Use o Google Antigravity para apoiar:

- criação das rotas da API;
- estrutura inicial da landing page;
- revisão de textos e organização visual.

??? tip "Dicas para usar o Antigravity com melhor resultado"
    - informe o contexto do TCC com clareza (área, público e problema que o projeto resolve);
    - peça respostas em etapas, não tudo de uma vez;
    - solicite código já separado por arquivo, por exemplo: `routes/api.php`, `routes/web.php`, `resources/views/home.blade.php`;
    - peça sempre conteúdo em português com linguagem formal e objetiva;
    - revise antes de publicar: nomes de rotas, textos, ortografia e consistência do tema.

---

## Requisitos obrigatórios

- criar um novo projeto Laravel;
- configurar ambiente para execução sem banco externo:
  - `SESSION_DRIVER=file`
  - `CACHE_STORE=file`
  - `QUEUE_CONNECTION=sync`
- criar `Dockerfile` e `.dockerignore`;
- publicar no Render com Docker;
- criar no mínimo 3 endpoints GET coerentes com o tema do TCC;
- criar uma landing page inicial do projeto (rota `/`) no mesmo Laravel.

---

## Regras dos endpoints

Os endpoints devem representar dados reais do contexto do seu TCC.

Exemplos:

- área de clínica: `/api/pacientes`, `/api/agendamentos`, `/api/especialidades`;
- área escolar: `/api/alunos`, `/api/turmas`, `/api/disciplinas`;
- área comercial: `/api/produtos`, `/api/pedidos`, `/api/clientes`.

Evite endpoints genéricos sem relação com o tema.

---

## Landing page com Antigravity

A landing page deve explicar o seu projeto de forma curta e clara.

Conteúdo mínimo esperado:

- nome do projeto;
- problema que o TCC resolve;
- público-alvo;
- lista de funcionalidades;
- seção com links dos endpoints principais da API.

??? tip "Prompt sugerido para gerar a landing page"
    ```text
    Estou criando um projeto de TCC chamado [NOME DO PROJETO], da área [AREA].
    Gere uma landing page simples para Laravel Blade, em português, com:
    - título do projeto
    - resumo do problema
    - público-alvo
    - 3 funcionalidades principais
    - seção "Endpoints da API" com links para /api/status, /api/recurso1, /api/recurso2
    Use HTML semântico, visual limpo, responsivo e textos objetivos.
    Entregue código para resources/views/home.blade.php e rota em routes/web.php.
    ```

---

## Etapas sugeridas

### Parte 1 - Gerar API base

1. Crie o projeto Laravel.
2. Peça ao Antigravity sugestões de 3 endpoints para o tema do TCC.
3. Ajuste o arquivo `routes/api.php`.
4. Teste os endpoints localmente.

### Parte 2 - Criar landing page

1. Peça ao Antigravity o conteúdo inicial da landing page.
2. Crie a view Blade.
3. Configure a rota `/` em `routes/web.php`.
4. Valide visual no navegador (desktop e celular).

### Parte 3 - Deploy no Render

1. Configure `Dockerfile` e `.dockerignore`.
2. Faça push para GitHub.
3. Publique no Render via Web Service com Docker.
4. Teste a rota `/` e os endpoints `/api/...` em produção.

---

## Entrega

Enviar:

1. nome do TCC;
2. link do repositório no GitHub;
3. link da aplicação no Render;
4. lista dos endpoints criados com breve descrição;
5. print da landing page em execução.

??? warning "Uso responsável de IA"
    A IA acelera o desenvolvimento, mas a responsabilidade final é do aluno.
    Revise conteúdo, ortografia, coerência e funcionamento antes da entrega.
