# Git Básico

> Guia prático para iniciar com versionamento de código usando Git e VSCode.

---

## O que é o Git?

O Git é um sistema de controle de versão. Ele funciona como uma verdadeira "máquina do tempo" para os seus arquivos de código. Quando você está desenvolvendo um projeto, é comum fazer várias alterações ao longo do tempo. O Git guarda um histórico de todas essas mudanças, permitindo que você volte para uma versão anterior caso algo dê errado ou precise consultar como o código era antes.

Além disso, o Git é fundamental para o trabalho em equipe, pois permite que várias pessoas trabalhem juntas editando os mesmos arquivos no mesmo projeto, sem que o trabalho de uma sobrescreva o da outra.

!!! tip "Dica"
    É muito comum não saber a diferença entre o Git e o GitHub, mas é simples: O Git é o programa que roda no seu computador para controlar as versões. O GitHub é um site na nuvem onde você pode guardar ou hospedar os seus projetos controlados pelo Git, facilitando muito o compartilhamento e o trabalho em equipe.

---

## Como utilizar o Git via Linha de Comando

Para usar o Git pelo terminal (linha de comando), é necessário primeiro instalar o Git no seu computador. Após a instalação, você pode usar os comandos abaixo dentro da pasta do seu projeto.

### Inicializar um repositório

O primeiro passo em um projeto novo é avisar ao Git que ele deve começar a monitorar a sua pasta.

```bash
git init
```

### Verificar o status

Usado para ver quais arquivos foram modificados e quais estão prontos para serem salvos nessa versão.

```bash
git status
```

### Adicionar arquivos

Antes de salvar as alterações definitivamente, você precisa adicionar os arquivos na área de preparação (também chamada de stage). Para adicionar todos os arquivos modificados de uma vez:

```bash
git add .
```

### Salvar as alterações (Commit)

O commit é o ato de salvar de fato as alterações que foram adicionadas. É obrigatório sempre escrever uma mensagem curta explicando o que foi feito naquelas alterações.

```bash
git commit -m "Mensagem explicando a alteração"
```

### Enviar para a nuvem (Push)

Se o seu projeto estiver conectado a um repositório na internet (como o GitHub), este comando envia seus commits para lá.

```bash
git push
```

### Baixar alterações da nuvem (Pull)

Se alguma outra pessoa, ou você mesmo em outro computador, fez alterações no projeto online, você usa esse comando para baixar e atualizar as novidades para o seu computador.

```bash
git pull
```

---

## Como utilizar o Git pelo VSCode

O editor Visual Studio Code (VSCode) possui uma interface visual muito boa que facilita bastante o uso do Git, permitindo fazer tudo sem precisar decorar nem digitar os comandos.

### Aba de Controle de Código-Fonte

Na barra lateral esquerda do VSCode, existe um ícone que se parece com as ramificações de uma pequena árvore "Y" deitada. Este é o painel de **Controle de Código-Fonte**.

### Inicializando um projeto

Se a sua pasta ainda não tiver o Git configurado, aparecerá um grande botão escrito **Inicializar Repositório**. Basta clicar nele, que possui a mesma função que o comando `git init`.

### Adicionando arquivos (Stage)

Quando você altera algum arquivo e salva, ele automaticamente aparecerá na lista de "Alterações" neste painel. 
- Ao passar o mouse sobre o nome do arquivo, aparecerá um símbolo de **+** (Mais). 
- Clicar nesse **+** é o equivalente ao comando `git add`. O arquivo passará para a lista de "Alterações Preparadas".

### Fazendo o Commit

Acima da lista de arquivos, há uma caixa de texto escrita "Mensagem".
- Digite uma explicação curta sobre o que você mudou.
- Clique no botão **Confirmar** (ou **Commit**). Isso é o equivalente ao exato comando `git commit`.

### Sincronizando com a nuvem (Push e Pull)

Após fazer o commit das alterações, o botão mudará para **Sincronizar Alterações**. Clicar nele fará automaticamente o push e pull, mantendo seu código atualizado com o projeto no GitHub ou no servidor.

---

## Exercício de Fixação

??? example "Praticando os comandos básicos do Git"
    Vamos criar nosso primeiro repositório local e salvar uma alteração! Siga os passos abaixo, você pode escolher fazer pelo terminal ou pela interface visual do VSCode.
    
    - Crie uma pasta nova no seu computador chamada `meu-primeiro-projeto`.
    - Abra essa nova pasta no VSCode.
    - Inicialize o Git na pasta usando o comando `git init` no terminal ou clicando no botão existente no painel lateral esquerdo do VSCode.
    - Crie um arquivo chamado `index.html` e escreva um código HTML simples dentro dele.
    - Salve o arquivo.
    - Adicione o arquivo para ser preparado usando `git add .` ou clicando no botão **+** na interface do VSCode.
    - Faça o commit com a mensagem "Criando o arquivo index inicial" digitando o comando `git commit -m "..."` ou apenas digitando a mensagem e clicando em Confirmar no painel do VSCode.
    - Verifique se o status agora mostra que não há mais alterações pendentes digitando `git status` no terminal ou apenas olhe se a lista de arquivos no VSCode ficou totalmente vazia.
