# Exercício - API do TCC com Antigravity + Deploy no Render

> Objetivo: preparar o projeto base, executar localmente no Laragon, publicar a API no Render e, depois, criar uma landing page para apresentação do projeto.

---

## Cenário

Você vai atuar como desenvolvedor da primeira versão online do seu TCC.

Nesta atividade, o projeto precisa entregar estes resultados no mesmo repositório, em ordem:

- primeiro: setup do projeto base a partir de arquivo ZIP do GitHub;
- segundo: API com endpoints coerentes com o tema;
- terceiro: landing page simples para apresentar o projeto já publicado.

---

## Etapa 0 - Baixar o projeto base e executar no Laragon

Antes de iniciar a API, todos devem usar o mesmo projeto base.

1. Acesse o repositório : `[https://github.com/i-davies/cn2_laravel_tcc]`.
2. Clique em `Code` -> `Download ZIP`.
3. Extraia o arquivo ZIP dentro de `C:\laragon\www`.
4. Renomeie a pasta para um nome curto, por exemplo: `tcc_api_base`.
5. Abra a pasta no VS Code.
6. No terminal da pasta do projeto, execute:
    - `composer install`
    - `copy .env.example .env` (cria o arquivo `.env` a partir do modelo)
    - `php artisan key:generate`
7. Depois de criar o arquivo `.env`, garanta estes valores (sem banco externo):
    - `SESSION_DRIVER=file`
    - `CACHE_STORE=file`
    - `QUEUE_CONNECTION=sync`
8. Inicie localmente com Laragon:
    - opção A: iniciar o Laragon e acessar via Virtual Host (quando configurado);
    - opção B: executar `php artisan serve` e abrir `http://127.0.0.1:8000`.
9. Valide se o projeto abre sem erro antes de seguir para a API.

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

??? tip "Prompt sugerido para criar a API"
    ```text
    Estou criando uma API Laravel para meu TCC com o tema [TEMA].
    Gere um arquivo routes/api.php com:
    - rota GET /api/status
    - mais 3 rotas GET coerentes com o tema
    - respostas JSON simples e didáticas
    Depois, mostre sugestões de nomes de recursos e um exemplo de retorno para cada rota.
    Lembre também das variáveis de ambiente para rodar sem banco externo:
    SESSION_DRIVER=file, CACHE_STORE=file, QUEUE_CONNECTION=sync.
    ```

---

## Requisitos obrigatórios

- baixar o projeto base via ZIP do GitHub;
- executar o projeto localmente no Laragon antes do deploy;
- configurar ambiente para execução sem banco externo:
    - SESSION_DRIVER=file
    - CACHE_STORE=file
    - QUEUE_CONNECTION=sync
- configurar no Render as variáveis de ambiente necessárias da aplicação (incluindo `APP_KEY` e as variáveis sem banco externo);
- criar `Dockerfile` e `.dockerignore`;
- publicar no Render com Docker;
- criar no mínimo 3 endpoints GET coerentes com o tema do TCC;
- após o deploy da API, criar uma landing page inicial do projeto (rota `/`) no mesmo Laravel.

---

## Regras dos endpoints

Os endpoints devem representar dados reais do contexto do seu TCC.

Exemplos:

- área de clínica: `/api/pacientes`, `/api/agendamentos`, `/api/especialidades`;
- área escolar: `/api/alunos`, `/api/turmas`, `/api/disciplinas`;
- área comercial: `/api/produtos`, `/api/pedidos`, `/api/clientes`.

Evite endpoints genéricos sem relação com o tema.

---

## Etapas sugeridas

### Etapa 1 - Preparação local (ZIP + Laragon)

1. Faça o download do projeto via ZIP no GitHub.
2. Extraia em `C:\laragon\www` e abra no VS Code.
3. Instale dependências e gere a chave da aplicação.
4. Ajuste as variáveis de ambiente para rodar sem banco externo.
5. Execute localmente com Laragon e valide a rota `/`.

### Etapa 2 - Criar API e publicar no Render

1. Use o prompt sugerido no Antigravity para gerar as rotas da API.
2. Ajuste o arquivo `routes/api.php`.
3. Teste os endpoints localmente.
4. Configure `Dockerfile` e `.dockerignore`.
5. Faça push para GitHub.
6. Publique no Render via Web Service com Docker.
7. No painel do Render, abra o serviço publicado e acesse `Environment` para cadastrar as variáveis:
    - `APP_KEY` = valor gerado no seu `.env` local (exemplo: `base64:...`)
    - `SESSION_DRIVER` = `file`
    - `CACHE_STORE` = `file`
    - `QUEUE_CONNECTION` = `sync`
8. Salve as variáveis e aguarde o novo deploy automático do Render.
9. Teste os endpoints `/api/...` em produção.

### Etapa 3 - Criar landing page após o deploy da API

A landing page deve explicar o seu projeto de forma curta e clara.

Conteúdo mínimo esperado:

- nome do projeto;
- problema que o TCC resolve;
- público-alvo;
- lista de funcionalidades;
- seção com links dos endpoints principais da API.

??? tip "Prompt sugerido para gerar a landing page"
    ```text
    Minha API Laravel do TCC já está publicada no Render.
    Gere uma landing page simples para apresentar o projeto, em português, com:
    - título do projeto
    - resumo do problema
    - público-alvo
    - 3 funcionalidades principais
    - seção "Endpoints da API" com links para /api/status, /api/recurso1, /api/recurso2
    Use HTML semântico, visual limpo, responsivo e textos objetivos.
    Entregue código para resources/views/home.blade.php e rota em routes/web.php.
    ```

1. Peça ao Antigravity o conteúdo inicial da landing page.
2. Crie a view Blade.
3. Configure a rota `/` em `routes/web.php`.
4. Valide visual no navegador (desktop e celular).

Depois da publicação da landing page, teste a rota `/` e os endpoints `/api/...` em produção.

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

---

## Etapa final - Como voltar um commit (rollback) se algo der errado

Durante o desenvolvimento com IA, pode acontecer de um commit introduzir erros.
Nestes casos, vocês podem voltar o projeto para um estado anterior.

### Opção recomendada no VS Code para trabalho em equipe (mantém histórico)

Use esta opção quando o commit já foi enviado para o GitHub.

1. Abra o painel de controle de versão do VS Code:
    - atalho: `Ctrl + Shift + G`
2. Abra a Paleta de Comandos:
    - atalho: `Ctrl + Shift + P`
3. Execute o comando `Git: Revert Commit`.
4. Selecione o commit que deseja desfazer.
5. Faça o push pelo próprio VS Code (`Sync Changes` ou `Push`).

Resultado: o commit original continua no histórico, mas suas mudanças são desfeitas por um novo commit.

### Opção no VS Code para ajuste rápido local (antes do push)

Use quando o commit ainda não foi enviado para o GitHub.

1. Abra a Paleta de Comandos (`Ctrl + Shift + P`).
2. Execute `Git: Undo Last Commit`.
3. Ajuste o código e faça um novo commit.

Atenção: para commits já enviados, prefira `Git: Revert Commit`.

Evite reescrever histórico de branch compartilhado da turma.

### O Render faz build novamente após voltar commit?

Sim, se houver novo push no branch conectado ao serviço (exemplo: main), o Render inicia um novo build automaticamente.

Exemplos que disparam novo build:

- usar `Git: Revert Commit` e depois `Push`;
- desfazer localmente e depois enviar novo commit com `Push`;
- qualquer novo envio para o branch monitorado pelo Render.

Se você voltar somente no seu computador e não fizer push, o Render não rebuilda.
