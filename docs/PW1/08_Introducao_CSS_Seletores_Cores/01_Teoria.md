# Introdução ao CSS: Seletores e Cores

Até aqui, você já criou páginas com estrutura HTML, mídias e semântica.
Agora vamos dar vida ao visual da página usando CSS para mudar cores de fundo, cores de texto e melhorar a leitura do conteúdo.

## Objetivos da Aula

- Entender o que é CSS e por que ele é importante.
- Aplicar CSS inline em elementos específicos.
- Usar seletores para estilizar vários elementos de forma organizada.
- Alterar cores de fundo e de texto do projeto anterior.

## O que é CSS

CSS (Cascading Style Sheets) é a linguagem de estilos usada para definir a aparência dos elementos HTML.
Com CSS, você controla:

- cores;
- espaçamentos;
- tamanhos;
- alinhamentos;
- destaque visual dos blocos.

Sem CSS, a página funciona, mas fica com visual simples e pouco atrativo.

## CSS Inline: estilo direto no elemento

No CSS inline, o estilo é aplicado dentro da própria tag HTML, usando o atributo `style`.

Exemplo:

```html
<h1 style="color: white; background-color: darkblue;">Portal de Viagens</h1>
<p style="color: #333333;">Explore destinos incríveis.</p>
```

Vantagem:

- rápido para testar uma mudança pontual.

Limitação:

- dificulta manutenção quando a página cresce;
- repete código em vários elementos.

## CSS com Seletores: estilo mais organizado

Usar seletores permite aplicar estilos em grupos de elementos sem repetir código.
Isso torna o projeto mais limpo, reutilizável e fácil de manter.

### Seletor por tag

Aplica o estilo em todas as ocorrências da tag.

```html
<style>
  h2 {
    color: darkgreen;
  }
</style>
```

### Seletor por classe

Aplica estilo aos elementos que têm a mesma classe.

```html
<style>
  .destaque {
    background-color: #fff3cd;
    color: #5a3e00;
  }
</style>

<p class="destaque">Promoção da semana!</p>
```

### Seletor por id

Aplica estilo a um elemento específico com identificador único.

```html
<style>
  #rodape {
    background-color: #222222;
    color: #f1f1f1;
  }
</style>

<footer id="rodape">Turma 1º DS - PW1</footer>
```

??? tip "Dica"
    Em projetos maiores, prefira seletores com `class` e `id` em vez de muitos estilos inline.
    Isso facilita ajustes rápidos e mantém o código organizado.

## Mudando Cores de Fundo e Texto no Projeto Anterior

Pegue a página semântica criada na aula anterior e aplique CSS para melhorar o visual.

Exemplo de início:

```html
<style>
  body {
    background-color: #f4f8fb;
    color: #1f2937;
    font-family: Arial, sans-serif;
  }

  header {
    background-color: #0b3d91;
    color: white;
    padding: 12px;
  }

  section {
    background-color: white;
    padding: 10px;
    margin-top: 10px;
  }

  footer {
    background-color: #111827;
    color: #f9fafb;
    padding: 10px;
    margin-top: 12px;
  }
</style>
```

Perceba que, com poucos seletores, já conseguimos destacar áreas importantes da página.

## Projeto Prático

Crie um projeto completo reutilizando tudo o que foi aprendido até agora.

Tema sugerido: **Guia de Turismo da Sua Cidade**.

Estrutura esperada:

- semântica com `header`, `main`, `section` e `footer`;
- pelo menos uma imagem com `alt` e legenda;
- uma tabela com informações úteis do tema;
- uso de CSS inline em pelo menos um elemento;
- uso de CSS por seletores (tag, classe ou id) no restante da página;
- alterações visíveis de cor de fundo e de texto.

Arquivo sugerido:

- `PW1/08_aula/css_cores/projeto_turismo.html`

## Exercício de Fixação

Atualize o seu projeto da aula anterior com as regras abaixo:

- aplicar cor de fundo no `body`;
- aplicar cor de texto padrão da página;
- destacar `header` e `footer` com cores diferentes;
- criar uma classe para destacar um bloco importante;
- manter organização semântica da estrutura HTML.
