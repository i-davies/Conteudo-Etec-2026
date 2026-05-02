# Exemplo: MVC sem Framework em PHP

Nesta etapa, vamos montar um exemplo simples de login usando MVC em PHP puro.

O foco é enxergar a separação entre Model, View e Controller antes de iniciar Laravel.

## Objetivo da atividade

- Aplicar o conceito de MVC em uma estrutura mínima.
- Entender o caminho da requisição entre as camadas.
- Ver na prática como cada arquivo tem responsabilidade diferente.

---

## Estrutura de pastas

Crie a seguinte estrutura:

```text
PW3/09_aula/conceito_mvc_php/
  index.php
  controllers/
    LoginController.php
  models/
    UsuarioModel.php
  views/
    login_view.php
```

---

## Passo 1: criar o Model

### models/UsuarioModel.php

```php
<?php

class UsuarioModel
{
    private array $usuarios = [
        ["email" => "admin@escola.com", "senha" => "123456"],
        ["email" => "aluno@escola.com", "senha" => "654321"]
    ];

    public function validarLogin(string $email, string $senha): bool
    {
        foreach ($this->usuarios as $usuario) {
            if ($usuario["email"] === $email && $usuario["senha"] === $senha) {
                return true;
            }
        }

        return false;
    }
}
```

Responsabilidade do Model neste exemplo:

- armazenar dados simulados de usuários;
- aplicar a regra de validação de login.

---

## Passo 2: criar o Controller

### controllers/LoginController.php

```php
<?php

require_once __DIR__ . "/../models/UsuarioModel.php";

class LoginController
{
    public function autenticar(string $email, string $senha): array
    {
        $model = new UsuarioModel();
        $valido = $model->validarLogin($email, $senha);

        if ($valido) {
            return [
                "sucesso" => true,
                "mensagem" => "Login realizado com sucesso."
            ];
        }

        return [
            "sucesso" => false,
            "mensagem" => "E-mail ou senha inválidos."
        ];
    }
}
```

Responsabilidade do Controller neste exemplo:

- receber dados enviados pela interface;
- chamar o Model para validar;
- decidir qual resposta a View deve exibir.

---

## Passo 3: criar a View

### views/login_view.php

```php
<?php
$mensagem = $mensagem ?? "";
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Login MVC sem Framework</title>
</head>
<body>
  <h1>Exemplo de Login (MVC)</h1>

  <form method="post" action="">
    <label for="email">E-mail</label><br />
    <input type="email" id="email" name="email" required /><br /><br />

    <label for="senha">Senha</label><br />
    <input type="password" id="senha" name="senha" required /><br /><br />

    <button type="submit">Entrar</button>
  </form>

  <p><?php echo htmlspecialchars($mensagem, ENT_QUOTES, "UTF-8"); ?></p>
</body>
</html>
```

Responsabilidade da View neste exemplo:

- mostrar formulário para usuário;
- exibir a mensagem final de sucesso ou erro.

---

## Passo 4: ponto de entrada da aplicação

### index.php

```php
<?php

require_once __DIR__ . "/controllers/LoginController.php";

$mensagem = "";

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $email = trim($_POST["email"] ?? "");
    $senha = trim($_POST["senha"] ?? "");

    $controller = new LoginController();
    $resultado = $controller->autenticar($email, $senha);
    $mensagem = $resultado["mensagem"];
}

require __DIR__ . "/views/login_view.php";
```

O arquivo index.php organiza o fluxo:

- recebe requisição;
- chama o Controller;
- encaminha resultado para a View.

---

## Teste guiado

1. Abra o projeto no servidor local.
2. Acesse o arquivo index.php.
3. Teste credenciais válidas:
   - e-mail: admin@escola.com
   - senha: 123456
4. Teste credenciais inválidas e observe a mensagem.

---

## Leitura do fluxo MVC nesse exemplo

1. Usuário envia formulário na View.
2. index.php entrega a ação para o Controller.
3. Controller chama o Model para validar dados.
4. Model retorna verdadeiro ou falso.
5. Controller define mensagem final.
6. View exibe a resposta para o usuário.

??? tip "Antes de migrar para Laravel"
    Se você entendeu este exemplo, já tem a base para reconhecer MVC dentro de qualquer framework.
    A diferença principal no framework é a automação de rotas, classes e organização do projeto.
