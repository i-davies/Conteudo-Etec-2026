# Deploy com Render (Laravel API) - Versao Simples

> Objetivo: subir uma API Laravel basica no Render e testar funcionando online.

---

## O minimo que voce precisa

- conta no GitHub;
- conta no Render;
- VS Code instalado.

---

## Se nao tiver PHP e Composer instalados

Para esta aula, use o caminho mais simples no Windows:

### Opcao recomendada: Laragon

1. Instale o Laragon: <https://laragon.org/download/>
2. Abra o Laragon e clique em **Start All**.
3. Abra um terminal novo e teste:

```bash
php -v
composer -V
```

Se os dois comandos mostrarem versao, esta pronto.

### Opcao alternativa (manual)

- Instalar PHP: <https://windows.php.net/download/>
- Instalar Composer: <https://getcomposer.org/download/>

Depois, feche e abra o terminal novamente e teste `php -v` e `composer -V`.

---

## Criar projeto Laravel do zero (com IA)

Voce pode criar do zero com ajuda de IA.

### Opcao 1 - GitHub Copilot Free (recomendado)

1. Abra o VS Code em uma pasta vazia.
2. No terminal, rode:

```bash
composer create-project laravel/laravel api-render
```

3. Abra a pasta criada no VS Code.
4. No chat do Copilot, use este prompt:

```text
Estou em um projeto Laravel novo.
Crie uma rota GET /api/status que retorne JSON com {"ok": true}.
Mostre exatamente em qual arquivo devo colocar o codigo.
```

### Opcao 2 - Outra IA (Antigravity, ChatGPT, Claude, Gemini)

Use um prompt simples:

```text
Tenho um projeto Laravel vazio.
Me passe o codigo minimo para criar uma rota GET /api/status
retornando JSON {"ok": true} e diga em qual arquivo colocar.
```

Depois, copie o codigo gerado para o projeto.

---

## Projeto base (1 rota)

O Laravel ja reconhece automaticamente o arquivo `routes/api.php`.
Voce nao precisa importar esse arquivo em outro lugar.

O que precisa importar no proprio arquivo e apenas a facade `Route`:

```php
use Illuminate\Support\Facades\Route;
```

No arquivo `routes/api.php`, deixe algumas rotas simples:

```php
use Illuminate\Support\Facades\Route;

Route::get('/status', function () {
    return response()->json(['ok' => true]);
});

Route::get('/empresa', function () {
    return response()->json([
        'nome' => 'Empresa Exemplo',
        'cidade' => 'Sao Paulo'
    ]);
});

Route::get('/servicos', function () {
    return response()->json([
        'servicos' => [
            'Desenvolvimento Web',
            'Manutencao de Sistemas',
            'Suporte Tecnico'
        ]
    ]);
});
```

## Rodar sem SQLite (recomendado para esta aula)

Como esta API inicial nao usa banco de dados, o caminho mais simples e desligar o uso de DB no ambiente.

No arquivo `.env`, ajuste para:

```env
SESSION_DRIVER=file
CACHE_STORE=file
QUEUE_CONNECTION=sync
```

Com isso, o Laravel nao vai tentar salvar sessao/cache em banco.

Importante:

- nao use `SESSION_DRIVER=database` nesta aula;
- se tiver `DB_CONNECTION=sqlite`, pode manter sem problema,
  desde que nao use sessao/cache em banco e nao rode consultas.

Teste local rapido:

```bash
copy .env.example .env
php artisan key:generate
php artisan serve
```

Abra:

- `http://127.0.0.1:8000/api/status`
- `http://127.0.0.1:8000/api/empresa`
- `http://127.0.0.1:8000/api/servicos`

---

## Subir para o GitHub (resumo)

1. Abra a pasta do projeto no VS Code.
2. Faça o commit inicial.
3. Publique no GitHub.

---

## Deploy no Render (passo a passo curto)

1. Entre em <https://render.com> com GitHub.
2. Clique em **New +** > **Web Service**.
3. Selecione seu repositorio Laravel.
4. Configure:

- **Build Command:** `composer install`
- **Start Command:** `php artisan serve --host 0.0.0.0 --port $PORT`

5. Em **Environment Variables**, adicione:

- `APP_KEY` (gere localmente com `php artisan key:generate --show` e cole no Render)
- `SESSION_DRIVER=file`
- `CACHE_STORE=file`
- `QUEUE_CONNECTION=sync`

6. Clique em **Create Web Service**.
7. Espere finalizar o deploy.

---

## Teste da API publicada

Abra no navegador:

- `https://SEU-ENDERECO.onrender.com/api/status`
- `https://SEU-ENDERECO.onrender.com/api/empresa`
- `https://SEU-ENDERECO.onrender.com/api/servicos`

Se as rotas responderem JSON, deu certo.

---

## Entrega

1. Link do repositorio no GitHub.
2. Link da API no Render.

??? warning "Foco da semana"
    Neste momento, o foco e entender o fluxo de deploy.
    Configuracoes avancadas ficam para as proximas aulas.
