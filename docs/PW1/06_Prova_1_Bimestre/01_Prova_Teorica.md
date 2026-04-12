# Prova Teórica (1º Bimestre)

> Este material reúne a prova e o gabarito em um único arquivo para facilitar o treino. Nas questões objetivas, você pode marcar a alternativa correta no próprio quiz. Nas dissertativas, tente resolver sozinho antes de abrir a resposta esperada.

---

## Como Usar este Material

- responda primeiro sem consultar as respostas;
- use os quizzes para validar as questões objetivas;
- tente escrever as dissertativas no caderno ou no VS Code;
- só depois abra os blocos de resposta esperada para conferir.

---

## Conteúdos Avaliados

- papel do navegador, do servidor e do DNS na navegação web;
- estrutura básica de um documento HTML;
- uso de títulos, parágrafos e listas;
- criação de links internos, externos e relativos;
- uso correto de imagens, `figure` e `figcaption`;
- noções iniciais de organização de conteúdo com `div` e tabelas.

---

## Questões Objetivas para Treino

<quiz>
Qual é o papel do navegador no contexto da Web?
- [ ] É o servidor que armazena e entrega os arquivos do site.
- [ ] É responsável por traduzir nomes de domínio em endereços IP.
- [x] É o cliente que faz requisições e exibe as páginas recebidas do servidor.
- [ ] É o protocolo de comunicação entre computadores na internet.
- [ ] É uma linguagem de marcação usada para estruturar páginas.
</quiz>

<quiz>
Para que serve o DNS (`Domain Name System`)?
- [ ] Para transmitir vídeos de alta qualidade sem interrupção.
- [x] Para traduzir o nome de um site no endereço IP correspondente.
- [ ] Para bloquear acessos não autorizados ao servidor web.
- [ ] Para criar cópias de segurança automáticas dos arquivos do site.
- [ ] Para estilizar páginas HTML usando regras visuais.
</quiz>

<quiz>
Em uma página HTML, qual alternativa apresenta corretamente a função da tag `head`?
- [ ] Exibir todo o conteúdo visível da página para o usuário.
- [x] Guardar metadados e configurações da página, como título e `charset`.
- [ ] Criar links clicáveis para outras páginas do site.
- [ ] Organizar blocos visuais com classes e IDs.
- [ ] Inserir tabelas e listas ordenadas automaticamente.
</quiz>

<quiz>
Em uma estrutura HTML básica, qual tag define o título que aparece na aba do navegador?
- [ ] `h1`
- [ ] `body`
- [ ] `meta`
- [ ] `link`
- [x] `title`
</quiz>

<quiz>
Qual tag deve conter todo o conteúdo visível da página, como textos e imagens?
- [x] `body`
- [ ] `head`
- [ ] `title`
- [ ] `meta`
- [ ] `style`
</quiz>

<quiz>
Qual sequência representa uma hierarquia de títulos correta em HTML, do mais importante para o menos importante?
- [ ] `h3`, `h2`, `h1`
- [x] `h1`, `h2`, `h3`
- [ ] `h2`, `h1`, `h4`
- [ ] `h6`, `h1`, `h2`
- [ ] `p`, `h1`, `h2`
</quiz>

<quiz>
Qual é a diferença de uso entre as tags `h2` e `p`?
- [x] `h2` cria subtítulos de seção; `p` cria blocos de texto corrido.
- [ ] `h2` é usada para inserir imagens; `p` é para criar links de navegação.
- [ ] São idênticas e podem ser usadas sem diferença.
- [ ] `h2` é invisível ao usuário; `p` aparece em destaque na tela.
- [ ] `h2` cria tabelas; `p` cria listas ordenadas.
</quiz>

<quiz>
Qual tag cria uma lista em que a ordem dos itens importa?
- [ ] `ul`
- [ ] `li`
- [ ] `dl`
- [x] `ol`
- [ ] `section`
</quiz>

<quiz>
Dentro de uma lista (`ul` ou `ol`), qual tag define cada item individual?
- [ ] `p`
- [ ] `item`
- [x] `li`
- [ ] `dt`
- [ ] `dl`
</quiz>

<quiz>
Qual tag HTML é usada para criar links clicáveis em uma página?
- [ ] `link`
- [x] `a`
- [ ] `url`
- [ ] `href`
- [ ] `target`
</quiz>

<quiz>
Qual atributo da tag `a` define o destino do link?
- [ ] `src`
- [ ] `alt`
- [ ] `target`
- [ ] `style`
- [x] `href`
</quiz>

<quiz>
Qual das opções abaixo representa um link relativo que aponta para um arquivo do próprio projeto?
- [ ] `https://www.wikipedia.org`
- [ ] `mailto:escola@etec.com`
- [x] `paginas/contato.html`
- [ ] `http://www.google.com.br`
- [ ] `https://youtube.com`
</quiz>

<quiz>
O que ocorre quando um link contém o atributo `target="_blank"`?
- [ ] O link deixa de funcionar automaticamente.
- [ ] A página atual é fechada antes de abrir o destino.
- [ ] O link só funciona em dispositivos móveis.
- [ ] O link é desativado temporariamente.
- [x] O destino abre em uma nova aba do navegador.
</quiz>

<quiz>
Como se cria, corretamente, um link que leva o usuário para uma seção da mesma página com `id="topo"`?
- [ ] `<a href="/topo">Voltar</a>`
- [x] `<a href="#topo">Voltar</a>`
- [ ] `<a href="@topo">Voltar</a>`
- [ ] `<a href="*topo">Voltar</a>`
- [ ] `<a href="topo#">Voltar</a>`
</quiz>

<quiz>
Qual atributo da tag `img` é fundamental para acessibilidade e é exibido quando a imagem não carrega?
- [ ] `width`
- [ ] `src`
- [ ] `title`
- [ ] `loading`
- [x] `alt`
</quiz>

<quiz>
Qual estrutura HTML representa corretamente uma imagem com legenda?
- [x] `&lt;figure&gt;&lt;img src="foto.jpg" alt="Descrição"&gt;&lt;figcaption&gt;Legenda da foto&lt;/figcaption&gt;&lt;/figure&gt;`
- [ ] `<img><legend>Legenda da foto</legend>`
- [ ] `<picture><caption>Legenda da foto</caption></picture>`
- [ ] `<div><img src="foto.jpg"></div>`
- [ ] `<img src="foto.jpg" alt="Descrição"><p>Legenda da foto</p>`
</quiz>

<quiz>
O atributo `src` da tag `img` define:
- [ ] O texto alternativo exibido por leitores de tela.
- [ ] O tamanho em pixels da imagem.
- [x] O caminho do arquivo de imagem a ser exibido.
- [ ] A cor de fundo ao redor da imagem.
- [ ] A legenda exibida abaixo da imagem.
</quiz>

<quiz>
Em uma tabela HTML, qual tag cria células de cabeçalho?
- [ ] `td`
- [ ] `thead`
- [ ] `tr`
- [ ] `tc`
- [x] `th`
</quiz>

---

## Questões Dissertativas para Treino

### Questão 19

Escreva o trecho de código HTML de um bloco de galeria contendo:

- uma `div` com `id="galeria"`;
- dentro dela, um elemento `figure` com uma imagem com legenda, `alt` e tamanho definido.

Escreva apenas o bloco descrito, sem `DOCTYPE`, `html`, `head` ou `body`.

??? example "Resposta esperada da Questão 19"
    ```html
    <div id="galeria">
        <figure>
            <img src="foto.jpg" alt="Descrição da imagem" width="300">
            <figcaption>Legenda da imagem</figcaption>
        </figure>
    </div>
    ```

    Critérios para conferir sua resposta:

    - `div` com `id="galeria"` aberta e fechada corretamente.
    - Elemento `figure` dentro da `div`.
    - Tag `img` com atributo `src` preenchido.
    - Tag `img` com atributo `alt` preenchido.
    - Presença de um atributo de tamanho, como `width`.

    Observações:

    - Qualquer caminho válido no atributo `src`.
    - Qualquer texto alternativo coerente no atributo `alt`.
    - Qualquer valor numérico válido em `width`.

### Questão 20

Escreva o trecho de código HTML de uma seção de navegação contendo exatamente os três links a seguir:

- um link relativo que aponta para o arquivo `galeria.html`;
- um link externo para um site de sua escolha, que abra em nova aba;
- um link interno que leve de volta ao topo da página, considerando que existe um elemento com `id="topo"` no início da página.

Os links devem estar organizados em uma lista (`ul`).
Escreva apenas a seção descrita, sem `DOCTYPE`, `html`, `head` ou `body`.

??? example "Resposta esperada da Questão 20"
    ```html
    <ul>
        <li><a href="galeria.html">Ir para a galeria</a></li>
        <li><a href="https://www.google.com" target="_blank">Visitar site externo</a></li>
        <li><a href="#topo">Voltar ao topo</a></li>
    </ul>
    ```

    Critérios para conferir sua resposta:

    - Link relativo com `href="galeria.html"`.
    - Link externo com URL absoluta válida e `target="_blank"`.
    - Link interno com `href="#topo"`.

    Observações:

    - Qualquer URL externa válida iniciada em `https://`.
    - Textos diferentes nos links, desde que sejam coerentes.
    - O principal é a estrutura e o destino correto dos links.

---

## Resumo da Prova

- Questões objetivas: 18.
- Questões dissertativas: 2.
- Pontuação total original: 10,0 pontos.

<!-- mkdocs-quiz results -->