# Git Branches na Prática

Nesta aula, vamos aprender a usar **branches** para trabalhar com novas funcionalidades sem quebrar a branch principal.

---

## O que é uma branch?

Uma **branch** é uma linha paralela de desenvolvimento.

- `main`: normalmente guarda a versão estável;
- `feature/...`: usada para criar funcionalidades novas.

Isso permite testar mudanças com segurança antes de juntar no projeto principal.

---

## Fluxo básico com branches

Antes de começar os commits, deixe o ambiente pronto para executar PHP:

- Abra o Laragon;
- Clique em **Start All**;
- Abra o terminal do Laragon (Menu > Terminal).

### 1) Ver branches existentes

```bash
git branch
```

### 2) Criar e entrar em uma nova branch

```bash
git checkout -b feature/pagina-php
```

### 3) Fazer alterações e commit

```bash
git add .
git commit -m "Criando página inicial em PHP"
```

### 4) Voltar para a main

```bash
git checkout main
```

### 5) Unir a branch na main

```bash
git merge feature/pagina-php
```

### 6) Remover branch local (opcional)

```bash
git branch -d feature/pagina-php
```

---

## Branches no VSCode

No VSCode, você pode:

- clicar no nome da branch no canto inferior esquerdo;
- criar nova branch pela interface;
- alternar de branch sem usar terminal;
- fazer merge com ajuda da interface de controle de versão.

---

## Exercício guiado (PHP + Git)

??? example "Fixação: uma branch para cada tema"
     Objetivo: revisar PHP e fluxo de branch usando o padrão `feature/...`.

     1. Inicie o Laragon (**Start All**) e abra o terminal do Laragon.

     2. Crie a branch `feature/php-switch`:
         - No `revisao.php`, faça um `switch` para dia da semana (`1..7`).

     3. Volte para `main` e crie `feature/php-while`:
         - Faça um `while` mostrando a tabuada do 2 (1 a 10).

     4. Volte para `main` e crie `feature/php-for`:
         - Faça um `for` exibindo os números pares de 0 a 20.

     5. Volte para `main` e crie `feature/php-funcao`:
         - Crie `calcularMedia($a, $b)` retornando média com 2 casas decimais.

     6. Volte para `main` e crie `feature/php-classes`:
         - Crie a classe `ContaBancaria` com `titular`, `saldo` e método `depositar($valor)`.

     7. Volte para `main` e crie `feature/php-index`:
         - Altere o `index.php` para listar links dos exercícios criados.

     8. Em cada branch, rode o fluxo:

     ```bash
     git checkout -b feature/nome-da-branch
     git add .
     git commit -m "feat: descrição da atividade"
     ```

     9. Teste alternando entre branches:

     ```bash
     git checkout feature/php-switch
     git checkout feature/php-while
     git checkout feature/php-classes
     git checkout feature/php-index
     git checkout main
     ```

     10. Faça merge de **uma** branch na `main`:

     ```bash
     git merge feature/php-switch
     git log --oneline --graph --all
     ```

!!! tip "Resumo da aula"
    Branch é o jeito mais seguro de evoluir projeto: você desenvolve isolado, testa e só depois integra na `main`.
