# Textos em HTML: Cabeçalhos e Parágrafos

Agora que já temos o nosso esqueleto do site (as tags `head` e `body`), é hora de começar a colocar o músculo: o conteúdo de verdade! A base de quase toda página na internet é o texto. 

Mas como o navegador sabe o que é um título bem grande e o que é só um textinho de rodapé? Usando tags específicas!

## Os Cabeçalhos (Headings)

Para criarmos títulos e subtítulos, usamos as tags de `h1` até `h6`. O "h" vem de _Heading_ (Cabeçalho em inglês) e o número indica a importância.

- `<h1>`: É o título principal. Maior de todos e mais importante. Você deve usar **apenas um** por página!
- `<h2>`, `<h3>`, `<h4>`...: São os subtítulos, cada vez menores e menos importantes na hierarquia.

**Exemplo no código:**
```html
<h1>Notícias do Mundo dos Games</h1>
<h2>Novo console é anunciado</h2>
<h3>Preço assusta os jogadores</h3>
```

## Os Parágrafos (Paragraph)

Para os textos normais, blocos de texto ou notícias longas, usamos a tag `<p>`. O "p" vem de _Paragraph_ (Parágrafo). 

O navegador entende que tudo dentro de um `<p>` é um texto corrido e, quando o bloco acabar, ele pula de linha automaticamente de forma elegante.

**Exemplo no código:**
```html
<p>Na tarde de ontem, a empresa confirmou o lançamento do seu novo videogame.</p>
<p>Os fãs estão esperando ansiosos pelas inovações que virão junto ao lançamento mundial previsto para o ano que vem.</p>
```

---

## Teste seus conhecimentos

> Vamos revisar e fixar os conceitos discutidos!

<quiz>
De acordo com as boas práticas universais do HTML, quantas tags `<h1>` um desenvolvedor deve usar em cada página para ser bem visto pelos navegadores?
- [ ] Quantas ele quiser, quanto mais `<h1>` com títulos gigantes, mais os usuários da internet vão entrar no site dele.
- [x] Apenas **uma**! O `<h1>` é o título principal e coração da página, portanto tem o maior foco e destaque exclusivo.
- [ ] O ideal seria entre cinco ou dez `<h1>`, dependendo do tamanho das letras do sistema dele.
</quiz>

<quiz>
Do ponto de vista estrutural da página de internet, qual a diferença entre usar `<h2>` e `<p>`?
- [ ] O `<p>` serve para criar links e imagens na tela. O `<h2>` é para textos comuns.
- [ ] Eles são idênticos, tanto faz escolher um ou o outro para ser o bloco de texto comum.
- [x] O `<h2>` é usado para separar **subtítulos** importantes na página. Já o `<p>` é usado para blocos de **texto comum** (parágrafos).
</quiz>

<!-- mkdocs-quiz results -->

---

## Exercícios de Fixação

Vamos praticar criando uma mini página de notícias!

??? example "Desafio Minha Própria Notícia"
    Você vai criar a página de últimas notícias sobre um tema que você mais gosta (jogos, esportes, música, séries...).
    
    **Passo a passo da atividade:**
    
    - Crie a pasta da aula atual no padrão (`PW1/04_aula/textos`) e a abra no VS Code.
    - Crie um arquivo `noticias.html`.
    - Gere o esqueleto HTML (`!` e tecla `Enter`).
    - No `<title>`, coloque: `Notícias do [Seu Tema]`.
    - Adicione um único título máximo (`<h1>`) sobre a sua notícia principal.
    - Adicione um ou dois parágrafos (`<p>`) contando os "fatos" da sua notícia.
    - Coloque um subtítulo (`<h2>`) anunciando uma notícia menor.
    - Adicione mais um parágrafo sob essa notícia menor.
    - Salve e veja o resultado no **Live Server**.
