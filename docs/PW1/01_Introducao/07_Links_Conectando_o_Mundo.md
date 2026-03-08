# Links em HTML: Conectando o Mundo

Se os textos são o conteúdo da web, os **links** são as estradas que conectam tudo.

É com links que saímos de uma página para outra, abrimos vídeos, acessamos redes sociais, navegamos em menus e construímos sites com várias seções. Sem links, a internet seria apenas uma coleção de páginas isoladas.

Nesta aula, vamos aprender a criar e organizar links usando a tag `<a>`, entendendo quando usar caminhos absolutos, relativos e âncoras internas.

## A tag de Link (`<a>`)

A tag responsável por criar links é a `<a>`, de *anchor* (âncora).

- O texto clicável fica **entre** `<a>` e `</a>`.
- O destino do link vai no atributo `href`.

**Estrutura básica:**

```html
<a href="https://www.google.com">Ir para o Google</a>
```

## O atributo `href`: para onde o link aponta

O `href` (*Hypertext Reference*) define o caminho de destino.

### 1) Link absoluto

É o link completo da internet (com `http://` ou `https://`).

```html
<a href="https://www.youtube.com">YouTube</a>
```

Use quando o destino está em **outro site**.

### 2) Link relativo

Aponta para arquivos do **seu próprio projeto**.

```html
<a href="sobre.html">Sobre o projeto</a>
<a href="paginas/contato.html">Contato</a>
```

Use quando o destino está em uma página criada por você, na mesma pasta ou em subpastas.

## Abrindo em nova aba (`target="_blank"`)

Por padrão, o link abre na mesma guia. Para abrir em uma nova aba:

```html
<a href="https://www.wikipedia.org" target="_blank">
  Abrir Wikipédia em nova aba
</a>
```

- `target="_blank"` abre em nova aba.

## Links internos na mesma página (âncoras)

Também podemos criar links que levam para uma parte específica da **mesma página**.

Primeiro, damos um `id` para um elemento:

```html
<h2 id="contato">Contato</h2>
```

Depois, criamos um link para esse `id` usando `#`:

```html
<a href="#contato">Ir para a seção Contato</a>
```

Isso é muito útil em páginas longas, sumários e FAQ.

## Boas práticas para links

- Escreva textos claros no link (evite “clique aqui”).
- Teste todos os links para evitar erro 404.
- Use links externos em nova aba quando fizer sentido.
- Mantenha nomes de arquivos organizados e sem espaços.
- Pense na navegação do usuário: ele deve sempre conseguir “voltar” ou acessar o menu principal.

---

## Exemplo completo

```html
<h1>Mini Wiki: Jogos</h1>

<p>
  Veja também minha página sobre
  <a href="personagens.html">personagens</a>
  e a página de
  <a href="dicas.html">dicas</a>.
</p>

<h2 id="top5">Top 5 Jogos</h2>
<ol>
  <li>Valorant</li>
  <li>Minecraft</li>
  <li>Rocket League</li>
  <li>FIFA</li>
  <li>CS2</li>
</ol>

<p><a href="#topo">Voltar ao topo</a></p>
```

> Observação: para o link `#topo` funcionar, lembre de criar um elemento com `id="topo"` no início da página.

---

## Teste seus conhecimentos

> Agora vamos revisar com um quiz maior para consolidar a aula.

<quiz>
Qual tag HTML é usada para criar links clicáveis em uma página?
- [ ] `<link>`
- [ ] `<href>`
- [x] `<a>`
- [ ] `<url>`
</quiz>

<quiz>
Qual atributo da tag `<a>` define o destino do link?
- [ ] `src`
- [x] `href`
- [ ] `target`
- [ ] `action`
</quiz>

<quiz>
Qual opção representa um **link absoluto**?
- [ ] `pagina2.html`
- [ ] `../contato.html`
- [x] `https://pt.wikipedia.org`
- [ ] `#secao-final`
</quiz>

<quiz>
Quando usamos um **link relativo** em HTML?
- [ ] Apenas para sites internacionais.
- [x] Quando o destino é um arquivo do próprio projeto.
- [ ] Só em páginas com CSS.
- [ ] Apenas dentro da tag `<head>`.
</quiz>

<quiz>
O que faz `target="_blank"` em um link?
- [ ] Fecha a aba atual.
- [ ] Abre um arquivo local.
- [x] Abre o link em uma nova aba.
- [ ] Cria um link temporário.
</quiz>

<quiz>
Para criar um link para uma seção da mesma página, usamos:
- [ ] `href="@contato"`
- [ ] `href="/contato"`
- [x] `href="#contato"`
- [ ] `href="*contato"`
</quiz>

<quiz>
Qual item é uma boa prática ao escrever links?
- [x] Usar texto descritivo como “Ver tabela de horários”.
- [ ] Usar sempre “clique aqui” em todos os links.
- [ ] Evitar testar links para ganhar tempo.
- [ ] Colocar links em qualquer palavra sem contexto.
</quiz>

<quiz>
Se você tem os arquivos `index.html` e `sobre.html` na mesma pasta, qual link em `index.html` abre `sobre.html`?
- [ ] `<a href="https://sobre.html">Sobre</a>`
- [ ] `<a href="#sobre.html">Sobre</a>`
- [x] `<a href="sobre.html">Sobre</a>`
- [ ] `<a href="@sobre">Sobre</a>`
</quiz>

<!-- mkdocs-quiz results -->

---

## Exercício de Fixação

Vamos construir um projeto completo com **3 páginas interligadas**, simulando uma mini enciclopédia digital.

??? example "Desafio Mini Wiki (Tema Livre)"
    Você vai criar uma **Mini Wiki** de um tema da sua preferência: jogos, filmes, esportes, bandas, animes, tecnologias, carros, países etc.

    **Objetivo:**

    - Produzir 3 páginas HTML conectadas entre si por links.
    - Praticar links relativos, links externos e âncoras.

    **Estrutura sugerida de pastas/arquivos:**

    - `PW1/03_aula/mini-wiki/index.html`
    - `PW1/03_aula/mini-wiki/pagina1.html`
    - `PW1/03_aula/mini-wiki/pagina2.html`

    **Regras mínimas do desafio:**

    - Cada página deve ter:
        - Um `<h1>` com título da página.
        - Pelo menos 1 parágrafo `<p>`.
        - Um menu simples com links para as outras 2 páginas.
    - Em pelo menos 1 página, crie um link externo com `target="_blank"`.
    - Em pelo menos 1 página, crie uma âncora interna (`id` + `href="#..."`) para “voltar ao topo” ou pular para seção.

  ---
