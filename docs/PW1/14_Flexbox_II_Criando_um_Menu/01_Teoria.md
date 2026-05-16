# Flexbox II: Criando um Menu

Na aula anterior, você aprendeu a centralizar elementos com Flexbox.
Agora vamos usar esse mesmo conceito para construir um menu de navegação limpo, organizado e responsivo.

## Objetivos da Aula

- Criar uma barra de navegação com Flexbox.
- Alinhar logo e links no mesmo eixo.
- Distribuir itens com espaçamento equilibrado.
- Adaptar o menu para telas menores.
- Aplicar boas práticas de estrutura e legibilidade.

## Estrutura Base do Menu

Começamos com um HTML simples e semântico.

```html
<header class="topo-site">
  <nav class="menu-principal">
    <h1 class="logo">Festival Cultural</h1>

    <ul class="links-menu">
      <li><a href="#inicio">Início</a></li>
      <li><a href="#programacao">Programação</a></li>
      <li><a href="#galeria">Galeria</a></li>
      <li><a href="#contato">Contato</a></li>
    </ul>
  </nav>
</header>
```

## Transformando em Menu Flexível

```css
.menu-principal {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 14px 20px;
  background-color: #1d3557;
}

.logo {
  margin: 0;
  color: #f1faee;
  font-size: 24px;
}

.links-menu {
  display: flex;
  gap: 16px;
  list-style: none;
  margin: 0;
  padding: 0;
}

.links-menu a {
  color: #f1faee;
  text-decoration: none;
  font-weight: 600;
  padding: 6px 10px;
  border-radius: 6px;
}

.links-menu a:hover {
  background-color: #457b9d;
}
```

Com essa configuração:

- `space-between` separa logo e lista de links;
- `align-items: center` mantém tudo alinhado verticalmente;
- `gap` cria espaçamento limpo entre os itens do menu.

## Ajustando para Responsividade

Em telas menores, podemos empilhar os elementos para melhorar a leitura.

```css
@media (max-width: 768px) {
  .menu-principal {
    flex-direction: column;
    align-items: flex-start;
    gap: 12px;
  }

  .links-menu {
    flex-wrap: wrap;
    gap: 10px;
  }
}
```

Esse ajuste já deixa o menu mais amigável em celular e tablet.

??? tip "Dica"
    Quando o menu ficar muito cheio em telas pequenas, você pode evoluir para um botão tipo hambúrguer em uma próxima etapa do projeto.

## Exemplo Completo

```html
<style>
  body {
    margin: 0;
    font-family: Arial, sans-serif;
    background-color: #f8f9fa;
  }

  .menu-principal {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 14px 20px;
    background: linear-gradient(90deg, #1d3557, #457b9d);
  }

  .logo {
    margin: 0;
    color: #f1faee;
    font-size: 24px;
  }

  .links-menu {
    display: flex;
    gap: 14px;
    list-style: none;
    margin: 0;
    padding: 0;
  }

  .links-menu a {
    display: block;
    color: #ffffff;
    text-decoration: none;
    font-weight: 600;
    padding: 8px 12px;
    border-radius: 6px;
    transition: background-color 0.2s ease;
  }

  .links-menu a:hover {
    background-color: rgba(255, 255, 255, 0.2);
  }

  @media (max-width: 768px) {
    .menu-principal {
      flex-direction: column;
      align-items: flex-start;
      gap: 12px;
    }

    .links-menu {
      flex-wrap: wrap;
    }
  }
</style>

<header class="topo-site">
  <nav class="menu-principal">
    <h1 class="logo">Festival Cultural</h1>
    <ul class="links-menu">
      <li><a href="#inicio">Início</a></li>
      <li><a href="#programacao">Programação</a></li>
      <li><a href="#galeria">Galeria</a></li>
      <li><a href="#contato">Contato</a></li>
    </ul>
  </nav>
</header>
```

## Boas Práticas

- use tags semânticas (`header`, `nav`, `ul`, `li`, `a`);
- mantenha contraste suficiente entre fundo e texto;
- use `gap` para espaçar links sem depender de margens irregulares;
- teste o menu em desktop e mobile.

## Erros Comuns

- esquecer de remover marcadores com `list-style: none`;
- deixar links sem área de clique confortável;
- não testar o menu em largura pequena;
- exagerar na quantidade de itens e comprometer legibilidade.
