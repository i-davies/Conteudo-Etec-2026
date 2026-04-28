# Fontes e Tipografia com Google Fonts

Até aqui, sua página já tem estrutura, imagens, tabelas, semântica e cores.
Agora é hora de melhorar a identidade visual do conteúdo usando fontes mais adequadas ao tema da página.

## Objetivos da Aula

- Entender o papel da tipografia na leitura de uma página.
- Aprender a importar fontes do Google Fonts.
- Aplicar fontes diferentes em títulos e textos.
- Melhorar o visual do projeto já construído em PW1.

## O que é Tipografia na Web

Tipografia é a forma como os textos aparecem na tela.
Ela influencia:

- a legibilidade;
- a organização visual;
- o destaque de títulos e subtítulos;
- o estilo geral da página.

Uma mesma página pode parecer mais formal, moderna ou criativa apenas mudando a escolha das fontes.

## O que é o Google Fonts

Google Fonts é um serviço gratuito com várias fontes prontas para uso em páginas web.
Em vez de depender apenas das fontes instaladas no computador, você pode carregar uma fonte diretamente pela internet.

Isso ajuda a manter um visual mais consistente em diferentes dispositivos.

## Como importar uma fonte

Uma forma comum é adicionar links dentro da tag `head`.

Exemplo:

```html
<head>
  <meta charset="UTF-8">
  <title>Minha Página</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Roboto:wght@400;500&display=swap" rel="stylesheet">
</head>
```

Depois disso, basta usar `font-family` no CSS.

```html
<style>
  body {
    font-family: 'Roboto', sans-serif;
  }

  h1, h2 {
    font-family: 'Montserrat', sans-serif;
  }
</style>
```

## Escolhendo fontes para cada parte da página

Uma prática simples é usar:

- uma fonte mais marcante para títulos;
- uma fonte mais limpa para parágrafos;
- tamanhos coerentes para facilitar a leitura.

Exemplo:

```css
body {
  font-family: 'Roboto', sans-serif;
  font-size: 16px;
  line-height: 1.6;
}

h1 {
  font-family: 'Montserrat', sans-serif;
  font-size: 36px;
}

h2 {
  font-family: 'Montserrat', sans-serif;
  font-size: 24px;
}
```

## Boas práticas com tipografia

- Evite usar muitas fontes diferentes na mesma página.
- Prefira até duas famílias de fonte no projeto.
- Garanta contraste entre texto e fundo.
- Use tamanhos adequados para títulos e corpo do texto.
- Mantenha consistência entre seções parecidas.

??? tip "Dica"
    Se a página tem bastante texto, escolha uma fonte simples para leitura.
    Reserve fontes mais chamativas para títulos, banners ou destaques.

## Aplicando no projeto anterior

Pegue a página criada na aula de CSS com seletores e cores e melhore a tipografia.

Exemplo de ajuste:

```html
<style>
  body {
    background-color: #f4f8fb;
    color: #1f2937;
    font-family: 'Roboto', sans-serif;
  }

  header h1 {
    font-family: 'Montserrat', sans-serif;
    letter-spacing: 1px;
  }

  .destaque {
    font-family: 'Montserrat', sans-serif;
    font-weight: 700;
  }
</style>
```

Perceba que o conteúdo continua o mesmo, mas a leitura e o estilo ficam mais interessantes.

## Mini Projeto

Atualize seu projeto temático para que ele tenha uma identidade visual mais clara.

Tema sugerido: **Agenda Cultural da Cidade**.

Requisitos desta etapa:

- importar pelo menos duas fontes do Google Fonts;
- usar uma fonte para títulos e outra para textos;
- ajustar tamanho de texto em pelo menos três tipos de elemento;
- manter a paleta de cores da aula anterior.

Arquivo sugerido:

- `PW1/09_aula/fontes_tipografia/agenda_cultural.html`

## Encerramento da Etapa

Nesta aula, o foco é preparar a identidade visual do seu projeto.
O exercício integrador ficará na próxima pasta, junto com o estudo do Box Model.