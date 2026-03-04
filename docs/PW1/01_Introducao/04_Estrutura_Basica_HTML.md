# Estrutura Básica do HTML

Na aula anterior, escrevemos um texto simples, mas navegadores esperam algo um pouco mais organizado. Eles precisam de uma estrutura básica, como o esqueleto humano. Essa língua estrutural se chama **HTML** (HyperText Markup Language).

## A Planta Baixa do Site

Podemos imaginar o HTML como a planta baixa de uma casa. Ele não cuida da pintura ou dos móveis, ele apenas diz onde fica a parede, a porta e a janela.

No HTML, usamos as chamadas **Tags** (ou Etiquetas) para marcar cada parte do nosso documento. 

### A Regra das Tags

Uma tag normalmente é escrita em duplas assim:
`<nome-da-tag> Conteúdo no meio </nome-da-tag>`

- Note que a primeira tag **abre** e a segunda **fecha** (com a barra curva `/`).
- Tudo que está ali dentro será tratado com o poder daquela tag.

## O Esqueleto Padrão de uma Página HTML

Para qualquer site que você vá criar, ele sempre começará mais ou menos com essa base:

```html
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Minha Primeira Página</title>
</head>
<body>
    
    <!-- O conteúdo de verdade do site vai aqui dentro! -->

</body>
</html>
```

### O que significa cada parte?

- `<!DOCTYPE html>`: Avisa ao navegador "Ei, eu estou usando a versão mais nova do HTML (HTML5)!".
- `<html>`: É a raiz de tudo. Todo o seu site vai morar dentro dela. O `lang="pt-br"` diz que nosso site está em português.
- `<head>`: É a **cabeça** da página. Aqui ficam informações invisíveis para o usuário, mas importantes para o navegador (como o título da aba e configurações de idioma).
- `<body>`: É o **corpo**. Tudo que você quiser que apareça na tela (textos, imagens, botões) precisa estar dentro do body!

---

## Teste seus conhecimentos

> Vamos revisar e fixar os conceitos discutidos acima antes de irmos para a prática no computador!

<quiz>
Para que serve especificamente a tag `<head>` em nosso documento HTML?
- [ ] É a cabeça do site visualmente falando, o topo da página onde fica sempre o banner e o menu principal para usuário clicar.
- [x] Ela guarda as configurações "invisíveis" para o usuário, mas importantes para o navegador, como o título da aba e idioma.
- [ ] Ela contém todo o formato do texto de parágrafo grande que escreveremos em nosso sistema.
</quiz>

<quiz>
Onde devemos colocar todo o conteúdo visual e interativo do nosso site (como textos, tabelas, imagens)?
- [ ] Sempre na primeira linha do arquivo, antes de abrir qualquer tag `<html>`.
- [ ] Apenas dentro da tag `<head>`.
- [x] Sempre dentro da tag `<body>` (corpo)! Tudo que o usuário deve ver obrigatoriamente precisa ficar ali dentro.
</quiz>

<!-- mkdocs-quiz results -->

---

## Exercícios de Fixação

Vamos fixar o conhecimento montando o esqueleto de fato.

??? example "Desafio Montando o Esqueleto"
    No VS Code, há um atalho secreto para gerar essa estrutura toda sem precisar digitar letra por letra. Vamos descobrir!
    
    **Passo a passo da atividade:**
    
    - Crie a pasta para a nossa aula de hoje seguindo o padrão (`PW1/03_aula/estrutura_html`) e abra no VS Code.
    - Crie um novo arquivo chamado `aula03.html`.
    - Na primeira linha do arquivo, digite o símbolo de exclamação `!` e aperte a tecla `Enter` do teclado.
    - Magia! O VS Code deve ter criado todo o esqueleto para você.
    - Mude o texto que está dentro da tag `<title>` para `Meu Primeiro Site Oficial`.
    - Dentro da tag `<body>`, escreva: `Este é o esqueleto do meu site! Ele tem cabeça (head) e corpo (body).`
    - Salve o arquivo e abra com o **Live Server**.
    
    Verifique se, na aba do navegador, o nome lá em cima mudou para "Meu Primeiro Site Oficial".
