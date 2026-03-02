# Criando um Banco de Dados Visualmente

> Aprenda a iniciar o servidor MySQL e utilizar o HeidiSQL para criar seu primeiro banco de dados de forma visual, sem a necessidade de comandos de código neste primeiro momento.

---

## Iniciando o Servidor MySQL

Antes de criar um banco de dados, precisamos que o "motor" do banco esteja ligado no nosso computador. Para isso, usaremos o painel de controle do XAMPP.

* Abra o **XAMPP Control Panel**.
* Na linha onde está escrito **MySQL**, clique no botão **Start**.
* Aguarde até que o nome **MySQL** fique com o fundo verde. Isso indica que o servidor de banco de dados está rodando perfeitamente.

??? tip "O que é o XAMPP?"
    O XAMPP é um pacote que instala várias ferramentas de uma vez. Para nós, o mais importante é que ele já traz o MySQL pronto para uso no nosso computador, sem precisarmos de configurações complexas.

---

## Conectando ao Banco com HeidiSQL

O HeidiSQL é a ferramenta gráfica que usaremos para interagir com o nosso servidor MySQL. Em vez de digitarmos comandos de texto para tudo, teremos botões e janelas para facilitar o trabalho.

* Abra o **HeidiSQL**.
* Na tela inicial (chamada Gerenciador de sessões), procure o botão **Nova** no canto inferior esquerdo para criar uma nova conexão.
* No lado direito, em **Configurações**, certifique-se de que os dados estão preenchidos desta forma:
    * **Tipo de rede:** MySQL (TCP/IP)
    * **Nome do host/IP:** 127.0.0.1 (ou localhost)
    * **Usuário:** root
    * **Senha:** (deixe completamente em branco)
    * **Porta:** 3306
* Clique no botão **Abrir** no canto inferior direito.

Se tudo der certo, você verá a interface principal do HeidiSQL conectada ao seu servidor, pronta para começarmos!

---

## Criando Nosso Primeiro Banco de Dados: Escola

Para entender como tudo funciona na prática, vamos criar um banco de dados simples para gerenciar dados de uma escola.

* No lado esquerdo do HeidiSQL, você verá uma lista de bancos que já existem no servidor (provavelmente alguns com nomes do sistema).
* Clique com o botão direito em um espaço vazio nessa área da esquerda (ou em cima do nome da sua conexão).
* Vá em **Criar novo** e depois clique em **Banco de dados**.
* Uma pequena janela vai se abrir. No campo **Nome**, digite `escola` (tudo minúsculo e sem acentos).
* Clique em **OK**.

Pronto! O banco de dados `escola` vai aparecer na lista à esquerda. Dê dois cliques nele para que ele fique selecionado para as próximas etapas.

---

## Criando as Tabelas

Agora que temos o banco `escola`, precisamos criar lugares para guardar nossos dados: as tabelas. Vamos criar duas tabelas diferentes: `alunos` e `cursos`.

### Tabela de Cursos

Primeiro, vamos pensar nos cursos que a escola oferece.

* Certifique-se de que o banco `escola` está selecionado à esquerda.
* Clique com o botão direito em cima do banco `escola`, vá em **Criar novo** e escolha **Tabela**.
* Na janela principal à direita, você verá a aba **Básico**. No campo **Nome**, digite `cursos`.
* Agora precisamos adicionar os atributos (colunas) da tabela. Mais abaixo, procure e clique no botão **Adicionar** (com um ícone verde).
* Preencha as informações da primeira coluna:
    * **Nome:** id_curso
    * **Tipo de dados:** INT (número inteiro)
    * Em "Padrão", marque a caixinha **AUTO_INCREMENT** (isso faz o número crescer e ser gerado sozinho a cada registro).
    * Clique com o botão direito em cima dessa linha do `id_curso`, vá em **Criar novo índice** e escolha **PRIMARY KEY**. Um pequeno ícone de chave deve aparecer.
* Clique novamente no botão **Adicionar** para criarmos a segunda coluna:
    * **Nome:** nome_curso
    * **Tipo de dados:** VARCHAR (para texto)
    * **Tamanho:** 50
* Não se esqueça de clicar no botão **Salvar** na barra superior da tela.

### Tabela de Alunos

Agora vamos criar a tabela para organizar os alunos.

* Clique novamente com o botão direito no banco `escola`, vá em **Criar novo** e escolha **Tabela**.
* No campo **Nome**, digite `alunos`.
* Adicione a primeira coluna, que será a chave primária:
    * **Nome:** id_aluno
    * **Tipo de dados:** INT
    * Marque a opção **AUTO_INCREMENT**.
    * Clique com o botão direito na linha, vá em **Criar novo índice** e em seguida **PRIMARY KEY**.
* Adicione a segunda coluna para o nome do aluno:
    * **Nome:** nome_aluno
    * **Tipo de dados:** VARCHAR
    * **Tamanho:** 100
* Adicione a terceira coluna, que servirá para a relação com a outra tabela:
    * **Nome:** curso_id
    * **Tipo de dados:** INT
* Clique no botão **Salvar**.

??? info "Chave Primária (Primary Key)"
    Pense na Chave Primária como o documento de identidade (RG) daquele registro. É um identificador único para que aquele dado nunca seja confundido com outro no futuro. No nosso exemplo, o `id_curso` e o `id_aluno` são chaves primárias.

---

## Relacionando as Tabelas (Chave Estrangeira)

Temos alunos e cursos cadastrados, mas como o banco de dados sabe qual aluno pertence a qual curso? Precisamos de uma **Chave Estrangeira (Foreign Key)** para mostrar a ligação entre a tabela `alunos` e a tabela `cursos`.

* Na lista da esquerda do HeidiSQL, selecione com um clique a tabela `alunos`.
* Na parte central/direita da tela, por onde estávamos usando a aba Básico, clique na aba **Chaves estrangeiras**.
* Clique no botão **Adicionar** (ou Inserir) nessa aba.
* Preencha as colunas da configuração prestando bastante atenção:
    * **Nome da FK:** pode ser `fk_aluno_curso`
    * **Coluna(s):** selecione na caixa a coluna `curso_id`.
    * **Tabela de referência:** selecione a tabela `cursos`.
    * **Coluna(s) estrangeira(s):** selecione a coluna `id_curso`.
* Clique em **Salvar**.

Você acabou de "dizer" ao banco de dados: a coluna `curso_id` que criamos dentro da tabela de alunos está fortemente conectada ao `id_curso` verdadeiro da tabela de cursos!

---

??? example "Exercício de Fixação: Torneio de eSports Escolar"
    Um torneio de eSports de uma escola vai acontecer nos próximos dias e precisamos de criar a estrutura de banco de dados para organizar os times formados e os jogadores.
    
    Abra o HeidiSQL e crie um novo banco de dados chamado `torneio`. Dentro dele, siga as etapas abaixo visualmente:

    *   **Tabela `times`:**
        *   `id_time` (Inteiro, Auto Incremento, Chave Primária)
        *   `nome_time` (Texto VARCHAR, tamanho 50)
    
    *   **Tabela `jogadores`:**
        *   `id_jogador` (Inteiro, Auto Incremento, Chave Primária)
        *   `nome_jogador` (Texto VARCHAR, tamanho 100)
        *   `nickname` (Texto VARCHAR, tamanho 50)
        *   `time_id` (Inteiro, para fazer o relacionamento)
    
    **Desafio final:** configure corretamente a **Chave Estrangeira** na tabela de `jogadores` para que ela seja permanentemente conectada à tabela de `times`. Como prova de sua modelagem, tente inserir dados nas duas tabelas usando a aba "Dados" do HeidiSQL.
