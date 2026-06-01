# Revisão para Prova Prática

> Esta revisão prepara você para a prova prática de PW3 no mesmo projeto Laravel já utilizado na atividade avaliativa.

---

## Objetivo

Aplicar o padrão MVC em Laravel, com foco em criar Model, Controller e View com comandos Artisan, além de configurar migration, rotas, validação, persistência e listagem.

## Contexto da revisão

Nesta revisão, você deve continuar no mesmo projeto da atividade avaliativa e criar uma branch específica para treino.

Nome sugerido para a branch:

```text
feature/revisao-2-bimestre
```

O projeto base já está pronto e você deve criar a funcionalidade completa da entidade `Oficina` com:

- Model;
- Controller;
- View.

Também será necessário:

- criar e ajustar a migration;
- executar o `migrate`;
- registrar as rotas no arquivo `routes/web.php`.

---

### Preparação da branch

Crie e acesse a branch da revisão:

```bash
feature/revisao-2-bimestre
```

### Criando Model, Migration e Controller

Gere os arquivos da entidade `Oficina` com Artisan:

```bash
php artisan make:model Oficina -m
php artisan make:controller OficinaController
```

### Ajustando a migration

Edite o arquivo criado em `database/migrations/...create_oficinas_table.php`:

```php
public function up(): void
{
    Schema::create('oficinas', function (Blueprint $table) {
        $table->id();
        $table->string('nome_oficina');
        $table->string('professor_responsavel');
        $table->integer('carga_horaria');
        $table->string('turno');
        $table->timestamps();
    });
}
```

Execute a migration:

```bash
php artisan migrate
```

Implemente no controller os métodos `index` e `store`, com validação das regras:

- `nome_oficina`: obrigatório, mínimo de 4 caracteres;
- `professor_responsavel`: obrigatório, mínimo de 4 caracteres;
- `carga_horaria`: obrigatório, inteiro, mínimo 20 e máximo 120;
- `turno`: obrigatório.

Após salvar, redirecione para a listagem.

### Criando a View

Crie o arquivo Blade da funcionalidade:

```text
resources/views/oficinas/index.blade.php
```

Na view, implemente:

- formulário de cadastro;
- exibição de erros de validação;
- tabela com listagem das oficinas cadastradas;
- mensagem de lista vazia quando não houver registros.

Campos obrigatórios no formulário:

- nome da oficina;
- professor responsável;
- carga horária;
- turno.

### Registrando as rotas

No arquivo `routes/web.php`, registre:

- rota `GET` para listar oficinas;
- rota `POST` para cadastrar oficina.

### Validando funcionamento

Com o projeto em execução, valide:

- cadastro de pelo menos 4 oficinas;
- bloqueio de entrada inválida;
- atualização da listagem após cada cadastro;
- dados persistidos no banco.

---

## Exercícios

??? example "Desafio 1: criar Model e migration"
    Gere Model, migration e controller com Artisan:

    ```bash
    php artisan make:model Oficina -m
    php artisan make:controller OficinaController
    ```

    Depois, ajuste o arquivo `database/migrations/...create_oficinas_table.php`:

    ```php
    public function up(): void
    {
        Schema::create('oficinas', function (Blueprint $table) {
            $table->id();
            $table->string('nome_oficina');
            $table->string('professor_responsavel');
            $table->integer('carga_horaria');
            $table->string('turno');
            $table->timestamps();
        });
    }
    ```

    Em seguida, ajuste o Model para contemplar:

    - `nome_oficina`
    - `professor_responsavel`
    - `carga_horaria`
    - `turno`

    Execute a migration:

    ```bash
    php artisan migrate
    ```

??? example "Desafio 2: criar o Controller"
    Gere o controller com Artisan:

    ```bash
    php artisan make:controller OficinaController
    ```

    Implemente os métodos `index` e `store`.

    Regras esperadas para validação no `store`:

    - `nome_oficina`: obrigatório, mínimo de 4 caracteres;
    - `professor_responsavel`: obrigatório, mínimo de 4 caracteres;
    - `carga_horaria`: obrigatório, inteiro, mínimo 20 e máximo 120;
    - `turno`: obrigatório.

    Após salvar, redirecione para a página de listagem.

??? example "Desafio 3: criar a View e rotas"
    Crie a view `resources/views/oficinas/index.blade.php` e implemente:

    - formulário de cadastro;
    - exibição de erros de validação;
    - tabela com listagem das oficinas cadastradas;
    - mensagem de lista vazia quando não houver registros.

    Campos obrigatórios no formulário:

    - nome da oficina;
    - professor responsável;
    - carga horária;
    - turno.

    Em seguida, registre as rotas `GET` e `POST` em `routes/web.php`.

??? example "Desafio 4: validar funcionamento"
    Com o projeto em execução, valide:

    - cadastro de pelo menos 4 oficinas;
    - bloqueio de entrada inválida;
    - atualização da listagem após cada cadastro;
    - dados persistidos no banco.

---

## Checklist

- [ ] Criei e utilizei a branch `feature/revisao-2-bimestre`.
- [ ] Criei Model e migration com comando Artisan.
- [ ] Executei `php artisan migrate` sem erros.
- [ ] Criei o Controller com comando Artisan.
- [ ] Implementei os métodos `index` e `store` no Controller.
- [ ] Apliquei validação conforme as regras do enunciado.
- [ ] Criei formulário, erros e listagem na View.
- [ ] Registrei as rotas `GET` e `POST` em `routes/web.php`.
- [ ] Testei o fluxo completo com dados válidos e inválidos.
