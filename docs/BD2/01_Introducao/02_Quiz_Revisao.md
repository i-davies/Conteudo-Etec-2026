# Desafio de Nivelamento: Torneio de eSports

Seja bem-vindo ao Banco de Dados II! Para nossa primeira aula, após as apresentações, vamos realizar um pequeno desafio prático. 

O objetivo não é dar uma nota, mas sim entender o quanto você já conhece sobre modelagem de dados para que possamos planejar nossas aulas da melhor forma possível.

---

## O Cenário

A escola vai organizar um torneio de eSports e você foi escalado para modelar o banco de dados que controlará os times e os jogadores.

### Requisitos
- Precisamos cadastrar os **Times** (Nome do Time e Data de Criação).
- Precisamos cadastrar os **Jogadores** (Nickname, Nome Real, e E-mail).
- Cada **Jogador** pertence a apenas um **Time**.
- Cada **Time** pode ter vários **Jogadores**.

### Sua Missão
Você pode escolher entre duas formas de entregar o desafio (escolha a que se sentir mais confortável):

#### Opção A: Modelo Conceitual (MER)
Desenhe (pode ser no papel ou em ferramentas como Lucidchart/brModeler) as entidades `Time` e `Jogador`, seus atributos e o relacionamento entre eles.

#### Opção B: Modelo Lógico (Diagrama)
Desenhe a estrutura das tabelas (pode ser no papel ou em ferramentas como o **brModelo**), definindo os nomes dos campos e como elas se conectam.

??? tip "Dica de Ouro"
    Para ligar o Jogador ao Time, você precisará de um campo que identifique o time dentro da tabela de jogadores. Tente se lembrar de como fazíamos esse vínculo em Banco de Dados I!

---

### Critérios de Sucesso
- [ ] O modelo separa corretamente as informações de Times e Jogadores.
- [ ] Os nomes dos campos são claros e organizados.
- [ ] O relacionamento (vínculo) entre Time e Jogador foi representado corretamente.
