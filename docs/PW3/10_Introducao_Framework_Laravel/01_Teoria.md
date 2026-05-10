# Introdução a Framework com Laravel

Na aula anterior, você organizou uma aplicação em MVC com PHP puro.

Agora vamos dar o próximo passo: usar um framework que já aplica MVC de forma estruturada e acelera o desenvolvimento.

## Objetivos da unidade

- Entender o que é um framework web.
- Relacionar o MVC estudado com a estrutura do Laravel.
- Instalar e configurar um projeto Laravel no Laragon (PHP 8+).
- Construir um exemplo funcional com rota, controller, model, migration e view.

---

## O que é um framework

Framework é uma base pronta com regras e componentes reutilizáveis para criar aplicações.

Em vez de começar tudo do zero, você aproveita:

- roteamento;
- organização de pastas;
- conexão com banco de dados;
- validação de dados;
- segurança básica;
- ferramentas de desenvolvimento.

No Laravel, isso já vem integrado de forma organizada.

??? tip "Ligação com a aula de MVC"
    No MVC em PHP puro, você criou e conectou tudo manualmente.
    No Laravel, o padrão continua o mesmo, mas com convenções prontas, comandos de automação e recursos nativos.

---

## Como o MVC aparece no Laravel

No Laravel, o MVC aparece principalmente nestes pontos:

- **Model**: pasta `app/Models`.
- **View**: pasta `resources/views`.
- **Controller**: pasta `app/Http/Controllers`.
- **Rotas**: arquivo `routes/web.php`.

Fluxo simplificado:

1. Usuário acessa uma rota.
2. A rota chama um Controller.
3. O Controller consulta ou grava dados via Model.
4. O Controller devolve uma View com os dados.

---

## Pré-requisitos no Laragon

Antes de começar, confirme:

- Laragon instalado e em execução;
- PHP 8 ou superior ativo no Laragon;
- Composer disponível no terminal do Laragon.

No terminal do Laragon, valide:

```bash
php -v
composer -V
```

Se os dois comandos responderem com versão, o ambiente está pronto.

---

## Instalação do Laravel no Laragon

Abra o terminal dentro de `C:\laragon\www` e execute:

```bash
composer create-project laravel/laravel pw3_laravel_intro
cd pw3_laravel_intro
php artisan key:generate
```

Isso cria o projeto base e gera a chave da aplicação.

??? tip "Usando composer.phar (sem Composer global instalado)"
    Se o Composer não estiver instalado globalmente no seu ambiente, você pode usar `composer.phar` diretamente.

    **Clone e use composer.phar**

    - Faça download do `composer.phar` em https://getcomposer.org/download/ ou execute no terminal:

    ```bash
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php'); ?>" && php composer-setup.php && php -r "unlink('composer-setup.php');"
    ```

    - Clone o projeto Laravel:

    ```bash
    git clone https://github.com/laravel/laravel.git pw3_laravel_intro
    ```

    - Use o `composer.phar` para instalar dependências:

    ```bash
    php ..\composer.phar install
    copy .env.example .env
    php artisan key:generate
    ```
---

## Configuração de banco para a primeira prática

Para simplificar a aula, usaremos SQLite.

Crie o arquivo de banco:

```bash
New-Item database\database.sqlite -ItemType File
```

Depois, ajuste o arquivo `.env`:

```env
DB_CONNECTION=sqlite
DB_DATABASE=database/database.sqlite
```

Agora rode as migrações iniciais:

```bash
php artisan migrate
```

??? tip "Se preferir MySQL no Laragon"
    Você pode usar MySQL normalmente alterando `DB_CONNECTION`, `DB_HOST`, `DB_PORT`, `DB_DATABASE`, `DB_USERNAME` e `DB_PASSWORD` no `.env`.
    Para a primeira prática, SQLite costuma reduzir erros de configuração.

---

## Exemplo funcional: lista de produtos (MVC)

A proposta do exemplo é cadastrar produtos e listar na tela.

### Criando Model, Migration e Controller

```bash
php artisan make:model Produto -m
php artisan make:controller ProdutoController
```

### Ajustando a migration

Edite o arquivo criado em `database/migrations/...create_produtos_table.php`:

```php
public function up(): void
{
    Schema::create('produtos', function (Blueprint $table) {
        $table->id();
        $table->string('nome');
        $table->decimal('preco', 10, 2);
        $table->integer('estoque')->default(0);
        $table->timestamps();
    });
}
```

Execute a migration:

```bash
php artisan migrate
```

### Ajustando o Model

Arquivo `app/Models/Produto.php`:

```php
<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Produto extends Model
{
    // Define os campos que podem ser preenchidos em massa.
    protected $fillable = ['nome', 'preco', 'estoque'];
}
```

### Criando o Controller

Arquivo `app/Http/Controllers/ProdutoController.php`:

```php
<?php

namespace App\Http\Controllers;

use App\Models\Produto;
use Illuminate\Http\Request;

class ProdutoController extends Controller
{
    public function index()
    {
        $produtos = Produto::orderBy('nome')->get();
        return view('produtos.index', compact('produtos'));
    }

    public function store(Request $request)
    {
        $dados = $request->validate([
            'nome' => 'required|min:3',
            'preco' => 'required|numeric|min:0',
            'estoque' => 'required|integer|min:0',
        ]);

        Produto::create($dados);

        return redirect('/produtos');
    }
}
```

### Registrando as rotas

Arquivo `routes/web.php`:

```php
use App\Http\Controllers\ProdutoController;

Route::get('/produtos', [ProdutoController::class, 'index']);
Route::post('/produtos', [ProdutoController::class, 'store']);
```

### Criando a View

Crie o arquivo `resources/views/produtos/index.blade.php`:

```blade
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Produtos - Laravel</title>
</head>
<body>
    <h1>Cadastro de Produtos</h1>

    <form action="/produtos" method="post">
        @csrf

        <label for="nome">Nome</label><br>
        <input type="text" id="nome" name="nome" required><br><br>

        <label for="preco">Preço</label><br>
        <input type="number" step="0.01" id="preco" name="preco" required><br><br>

        <label for="estoque">Estoque</label><br>
        <input type="number" id="estoque" name="estoque" required><br><br>

        <button type="submit">Salvar</button>
    </form>

    <h2>Lista de produtos</h2>

    @if($produtos->isEmpty())
        <p>Nenhum produto cadastrado.</p>
    @else
        <ul>
            @foreach($produtos as $produto)
                <li>
                    {{ $produto->nome }} - R$ {{ number_format($produto->preco, 2, ',', '.') }} - Estoque: {{ $produto->estoque }}
                </li>
            @endforeach
        </ul>
    @endif
</body>
</html>
```

---

## Executando e testando

No terminal do projeto:

```bash
php artisan serve
```

Acesse no navegador:

```text
http://127.0.0.1:8000/produtos
```

Faça dois ou três cadastros para validar:

- envio do formulário;
- gravação no banco;
- listagem atualizada na página.

---

## O que você praticou neste exemplo

- instalação de projeto Laravel;
- configuração inicial do ambiente;
- aplicação de MVC dentro do framework;
- uso de migration para estruturar tabela;
- criação de formulário e persistência de dados.
