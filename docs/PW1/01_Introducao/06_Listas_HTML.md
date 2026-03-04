# Listas HTML: Organizando Informações

Muito do que vemos na internet são listas: menus de navegação, feeds de redes sociais, carrinhos de compra, resultados de busca. Tudo isso, no fundo, é uma lista de itens!

No HTML, temos dois modelos principais de lista: as **Listas Não Ordenadas** e as **Listas Ordenadas**.

## Listas Não Ordenadas (`<ul>`)

Usamos quando a ordem dos itens **não importa**. Por exemplo, uma lista de compras de supermercado: comprar maçã antes de banana ou vice-versa tanto faz.

- A tag que envolve a lista inteira é o `<ul>` (Unordered List).
- Cada item da lista é representado pela tag `<li>` (List Item).
- Na tela do navegador, os itens ganham uma "bolinha" do lado (os bullet points).

**Exemplo de Código:**
```html
<h2>Lista de Compras</h2>
<ul>
    <li>Maçã</li>
    <li>Leite</li>
    <li>Pão de queijo</li>
</ul>
```

## Listas Ordenadas (`<ol>`)

Usamos quando a ordem **importa muito**. Por exemplo, um ranking de jogos ou os passos de uma receita de bolo.

- A tag que envolve a lista é o `<ol>` (Ordered List).
- Os itens continuam sendo os mesmos `<li>`.
- Na tela do navegador, os itens ganham **números** automaticamente (1, 2, 3...).

**Exemplo de Código:**
```html
<h2>Ranking E-sports: Melhores Jogadores</h2>
<ol>
    <li>FalleN</li>
    <li>S1mple</li>
    <li>Coldzera</li>
</ol>
```

---

## Teste seus conhecimentos

> Vamos revisar e fixar os conceitos discutidos sobre estruturas ordenadas e não ordenadas!

<quiz>
Quais são exatamente as tags raízes globais usadas pelo HTML para criar uma Lista Ordenada e uma Lista Não Ordenada?
- [ ] Respectivamente, a tag `<ordered>` para ordenada e `<unordered>` para não ordenada.
- [x] A Lista Ordenada é demarcada com a tag `<ol>` e a Lista Não Ordenada usa a tag `<ul>`.
- [ ] As tags são `<lista>` para ordenada e `<lista-ponto>` para marcadores com bolinha.
</quiz>

<quiz>
Aprendemos a envolver a lista. E qual é a tag específica em HTML que é usada para definir CADA ITEM dentro dessas referidas listas?
- [x] Usamos sempre a tag `<li>` (List Item) para definir itens pontuais, não importa quem é o "pai" criador dessa lista (`<ol>` ou `<ul>`).
- [ ] Usamos a tag `<p>` pois todo item de lista, no fundo do HTML, é apenas um trecho normal de parágrafo disfarçado.
- [ ] Usamos a tag `<item>` tanto no pai não numerado, como pai ordenado numérico.
</quiz>

<!-- mkdocs-quiz results -->

---

## Exercícios de Fixação

É hora de organizar a nossa rotina criando arquivos de listagem!

??? example "Desafio Organizando Detalhes"
    Vamos criar duas listas em um único arquivo, praticando os dois formatos aprendidos no dia de hoje.
    
    **Passo a passo da atividade:**
    
    - Sem esquecer da organização, crie a pasta (`PW1/05_aula/listas`) e trabalhe dentro dela no VS Code.
    - Crie um arquivo chamado `listas.html` e gere o seu esqueleto.
    - Deixe o `<title>` como `Minhas Listas Pessoais`.
    - Coloque um título grandão (`<h1>`) com o texto: "Tarefas e Preferências".
    - Crie um subtítulo (`<h2>`) chamado: "Coisas que preciso fazer hoje".
    - Crie uma **Lista Ordenada (`<ol>`)** e adicione pelo menos 3 ações (`<li>`) do seu dia sentindo a ordem de importância.
    - Abaixo, crie outro subtítulo (`<h2>`) chamado: "Minhas Séries e Jogos Favoritos".
    - Crie uma **Lista Não Ordenada (`<ul>`)** e adicione pelo menos 4 nomes que você curte em itens de lista (`<li>`).
    - Salve e abra isso no **Live Server** para conferir a mágica acontecendo e os resultados sendo numerados ou marcados com bolinhas na tela!
