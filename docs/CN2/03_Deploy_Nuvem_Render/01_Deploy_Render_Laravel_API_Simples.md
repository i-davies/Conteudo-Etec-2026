# Deploy com Render (Laravel API) com Docker

> Objetivo: subir uma API Laravel básica no Render usando Docker e testar funcionando online.

---

## O que você precisa

- conta no GitHub;
- conta no Render;
- VS Code instalado;
- Docker Desktop instalado e funcionando.

---

## Por que usar Docker no Render para Laravel?

No Render, não existe runtime nativo de Laravel/PHP como existe para Node e Python.

Para projetos em PHP, o caminho recomendado é publicar com **Docker**.

Em linguagem simples:

- você descreve o ambiente da aplicação em um arquivo `Dockerfile`;
- o Render monta esse ambiente;
- a API sobe com a mesma configuração em qualquer máquina.

??? tip "Conceito rápido: o que é Docker?"
    Docker empacota sua aplicação com tudo o que ela precisa para rodar.

    Pense assim:
    - sua API + PHP + dependências = uma imagem;
    - essa imagem roda em um contêiner;
    - o Render executa esse contêiner na nuvem.

---

## Configurar Docker no Windows (primeira vez)

1. Instale o Docker Desktop: <https://www.docker.com/products/docker-desktop/>
2. Abra o instalador e mantenha a opção de **WSL 2** habilitada.
3. Reinicie o computador, se o instalador solicitar.
4. Abra o Docker Desktop e aguarde aparecer que o Engine está em execução.
5. Abra um terminal novo e teste:

```bash
docker --version
docker run hello-world
```

Se o `hello-world` executar sem erro, o Docker está pronto.

---

## Criar projeto Laravel base

Se você ainda não tem o projeto, crie com:

```bash
composer create-project laravel/laravel api-render
cd api-render
```

No arquivo `routes/api.php`, deixe as rotas:

```php
use Illuminate\Support\Facades\Route;

Route::get('/status', function () {
    return response()->json(['ok' => true]);
});

Route::get('/empresa', function () {
    return response()->json([
        'nome' => 'Empresa Exemplo',
        'cidade' => 'São Paulo'
    ]);
});

Route::get('/servicos', function () {
    return response()->json([
        'servicos' => [
            'Desenvolvimento Web',
            'Manutenção de Sistemas',
            'Suporte Técnico'
        ]
    ]);
});
```

---

## Preparar variáveis de ambiente

No arquivo `.env`, garanta:

```env
SESSION_DRIVER=file
CACHE_STORE=file
QUEUE_CONNECTION=sync
```

Gere a chave da aplicação localmente:

```bash
php artisan key:generate --show
```

Guarde o valor gerado para usar no Render como `APP_KEY`.

---

## Criar Dockerfile da API

Na raiz do projeto Laravel, crie o arquivo `Dockerfile`:

```Dockerfile
FROM php:8.3-cli

WORKDIR /var/www

RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libzip-dev \
    && docker-php-ext-install zip \
    && rm -rf /var/lib/apt/lists/*

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

COPY . .

RUN composer install --no-dev --optimize-autoloader --no-interaction

CMD sh -c "php artisan serve --host 0.0.0.0 --port ${PORT:-8000}"
```

Também crie o arquivo `.dockerignore`:

```text
.git
node_modules
vendor
storage/logs
.env
```

---

## Testar com Docker na máquina local

1. Monte a imagem:

```bash
docker build -t api-render-laravel .
```

2. Rode o contêiner com variáveis:

```bash
docker run --rm -p 8000:8000 -e APP_KEY="SUA_APP_KEY_AQUI" -e SESSION_DRIVER=file -e CACHE_STORE=file -e QUEUE_CONNECTION=sync -e PORT=8000 api-render-laravel
```

3. Teste no navegador:

- <http://127.0.0.1:8000/api/status>
- <http://127.0.0.1:8000/api/empresa>
- <http://127.0.0.1:8000/api/servicos>

---

## Subir para o GitHub

1. Abra a pasta do projeto no VS Code.
2. Faça o commit inicial.
3. Publique no GitHub.

---

## Deploy no Render com Docker

1. Entre em <https://render.com> com GitHub.
2. Clique em **New +** > **Web Service**.
3. Selecione o repositório Laravel.
4. O Render deve detectar o `Dockerfile` automaticamente.
5. Em **Environment Variables**, adicione:

- `APP_KEY` (valor gerado no `php artisan key:generate --show`)
- `SESSION_DRIVER=file`
- `CACHE_STORE=file`
- `QUEUE_CONNECTION=sync`

6. Clique em **Create Web Service**.
7. Aguarde o build e o deploy finalizarem.

---

## Teste da API publicada

Abra no navegador:

- `https://SEU-ENDERECO.onrender.com/api/status`
- `https://SEU-ENDERECO.onrender.com/api/empresa`
- `https://SEU-ENDERECO.onrender.com/api/servicos`

Se as rotas responderem JSON, o deploy funcionou.

---

## Entrega

1. Link do repositório no GitHub.
2. Link da API no Render.

??? warning "Foco da semana"
    Neste momento, o foco é entender o fluxo de deploy com Docker no Render.
    Configurações avançadas ficam para as próximas aulas.
