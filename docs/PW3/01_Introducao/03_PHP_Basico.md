# PHP: Revisão Rápida

Nesta aula, o objetivo é **revisar** PHP e fazer um **diagnóstico** rápido da turma.

---

## Revisão

O **PHP** é uma linguagem muito usada no backend da web. Ele roda no servidor e gera o conteúdo que o navegador recebe.

Exemplos comuns de uso:

- processar formulários;
- acessar banco de dados;
- montar páginas dinâmicas.

---

## Sintaxe básica

Exemplo mínimo:

```php
<?php
echo "Revisão de PHP";
```

O bloco `<?php ... ?>` indica que aquele trecho deve ser interpretado como PHP.

---

## Variáveis, condição e laço

```php
<?php
$nome = "Ana";
$nota = 7;

if ($nota >= 6) {
    echo "Aprovado";
} else {
    echo "Reprovado";
}

for ($i = 1; $i <= 3; $i++) {
    echo " Rodada $i";
}
```

No PHP, variáveis começam com `$`.

---

## Função

```php
<?php
function somar(float $a, float $b): float {
    return $a + $b;
}

echo somar(2, 3);
```

---

## Estruturas importantes para revisão

### `switch`

Use quando você quer comparar uma variável com vários casos possíveis.

```php
<?php
$perfil = "admin";

switch ($perfil) {
    case "admin":
        echo "Acesso total";
        break;
    case "editor":
        echo "Pode editar conteúdo";
        break;
    default:
        echo "Acesso visitante";
}
```

### `while`

Repete enquanto a condição for verdadeira.

```php
<?php
$contador = 1;

while ($contador <= 5) {
    echo "Número: $contador <br>";
    $contador++;
}
```

### Classe básica

```php
<?php
class Aluno {
    public string $nome;
    public float $nota;

    public function __construct(string $nome, float $nota) {
        $this->nome = $nome;
        $this->nota = $nota;
    }

    public function situacao(): string {
        return $this->nota >= 6 ? "Aprovado" : "Reprovado";
    }
}

$aluno = new Aluno("Carlos", 8.5);
echo $aluno->nome . " - " . $aluno->situacao();
```

---

## Como executar com Laragon

Neste cenário, considere que todos os computadores já têm **Laragon** instalado.

### 1) Iniciar o Laragon

- Abra o Laragon;
- Clique em **Start All** (Apache/Nginx e demais serviços);
- Abra o terminal do próprio Laragon (Menu > Terminal), pois ele já vem configurado com PHP/Composer no PATH.

### 2) Criar pasta do exercício no diretório web

```bash
cd C:\laragon\www
mkdir revisao-php
cd revisao-php
```

### 3) Criar o arquivo de revisão

Crie `revisao.php` com os exercícios desta aula.

### 4) Executar no navegador

Abra:

- `http://localhost/revisao-php/revisao.php`

Se preferir usar o servidor embutido do PHP no terminal do Laragon:

```bash
php -S localhost:8000 -t .
```

Depois acesse:

- `http://localhost:8000/revisao.php`

---

## Diagnóstico rápido (prática)

??? example "Atividade de nivelamento"
    Crie um arquivo `revisao.php` contendo:

    1. Uma variável `$nome` com seu nome.
    2. Uma função `boasVindas($nome)` que retorna `"Olá, NOME"`.
    3. Um `if` que exibe `"maior de idade"` ou `"menor de idade"` a partir de `$idade`.
    4. Um `for` que imprime os números de 1 a 5.

---

## Mini quiz diagnóstico

<quiz>
No PHP, qual símbolo deve aparecer no nome de uma variável?

* [x] `$`
* [ ] `@`
* [ ] `#`
</quiz>

<quiz>
Qual estrutura usamos para decisão em PHP?

* [ ] `while`
* [x] `if ... else`
* [ ] `switchcase`
</quiz>

<quiz>
Qual trecho representa corretamente uma função em PHP?

* [ ] `def somar(a, b): return a + b`
* [x] `function somar($a, $b) { return $a + $b; }`
* [ ] `func somar(a, b) => a + b`
</quiz>

<quiz>
O `for` é usado principalmente para:

* [x] repetição
* [ ] importar bibliotecas
* [ ] declarar classe
</quiz>

<!-- mkdocs-quiz results -->

---

## Boas práticas

- Use nomes claros para variáveis e funções;
- Indente o código para facilitar leitura;
- Teste cada bloco antes de avançar.

