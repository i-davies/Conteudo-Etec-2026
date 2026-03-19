# Introdução ao Deploy na Nuvem com Vercel (Gratuito)

> Nesta aula, vamos publicar um site na internet de forma gratuita usando Vercel e entender como isso se conecta com os conceitos de Computação em Nuvem 2.

---

## O que é a Vercel?

A **Vercel** é uma plataforma de nuvem focada em publicação de aplicações web, principalmente front-end.

Em linguagem simples:

- Você cria o projeto no seu computador.
- Envia para o GitHub.
- A Vercel detecta o projeto e publica automaticamente em uma URL pública.

Exemplo de URL gerada:

- `https://meu-projeto.vercel.app`

---

## Que tipo de serviço a Vercel oferece?

A Vercel reúne vários serviços em uma plataforma só:

- **Hospedagem estática:** HTML, CSS e JavaScript.
- **Deploy automático (CI/CD):** cada novo commit no GitHub pode gerar uma nova versão online.
- **Previews por branch/PR:** cada mudança pode ter um link de teste.
- **Funções serverless:** backend simples sem gerenciar servidor tradicional.
- **CDN global:** conteúdo distribuído para acesso mais rápido.
- **Logs e observabilidade básica:** acompanhar erros e requisições.

No plano gratuito, já é possível trabalhar com projetos acadêmicos e portfólio.

---

## Em qual categoria da CN2 a Vercel se encaixa?

Dentro de Computação em Nuvem, a Vercel pode ser analisada principalmente como:

- **PaaS (Platform as a Service):** você foca no código e a plataforma cuida da infraestrutura.
- **FaaS (Function as a Service), quando usar serverless:** você publica funções sem administrar servidor.
- **SaaS (Software as a Service), no uso diário da ferramenta web:** você consome um software pronto para deploy.

Para CN2, o principal enquadramento prático desta aula é **PaaS**, com apoio de conceitos de **CI/CD** e **serverless**.

---

## Projeto Exemplo da Aula

Nesta disciplina, use o projeto exemplo disponível na pasta:

- `exemplos/CN2/site-institucional-vercel`

Esse projeto é estático (HTML + CSS), ideal para primeiro deploy.

### Estrutura do projeto

```text
site-institucional-vercel/
  index.html
  styles.css
  README.md
```

---

## Git e GitHub (explicação simples)

### O que é Git?

O **Git** é um sistema de controle de versões.

Pense nele como um "histórico inteligente" do seu projeto:

- Salva versões.
- Mostra o que foi alterado.
- Permite voltar para versões anteriores.

### O que é GitHub?

O **GitHub** é um site para hospedar repositórios Git na nuvem.

Com ele, você pode:

- guardar o projeto online;
- compartilhar com outras pessoas;
- conectar com serviços como a Vercel.

### Fluxo mais simples no VS Code (sem terminal)

1. Abra a pasta do projeto no VS Code.
2. Clique no ícone de **Controle de Código-Fonte** (Source Control).
3. Se necessário, clique em **Initialize Repository**.
4. Faça uma alteração simples (ex.: trocar um título).
5. No Source Control, escreva uma mensagem de commit, por exemplo: `primeiro commit`.
6. Clique em **Commit**.
7. Clique em **Publish to GitHub** e finalize o envio pelo assistente.

Pronto: seu projeto estará no GitHub.

---

## Deploy automático na Vercel (passo a passo)

1. Acesse: <https://vercel.com>
2. Clique em **Sign Up** e entre com sua conta do GitHub.
3. Clique em **Add New...** > **Project**.
4. Selecione o repositório do projeto.
5. Clique em **Deploy**.
6. Aguarde a publicação e teste a URL gerada (`.vercel.app`).

### Atualizações automáticas

Depois do primeiro deploy:

- fez commit no GitHub,
- a Vercel detecta,
- e publica nova versão automaticamente.

Isso é uma forma prática de CI/CD para iniciantes.

---

## Outras funcionalidades legais da Vercel (tempo extra)

Se sobrar tempo na aula, mostre rapidamente:

- **Domínio customizado** (ex.: `meusite.com.br`).
- **Environment Variables** para chaves e configurações.
- **Analytics/Web Vitals** para medir desempenho.
- **Logs de Build e Runtime** para depuração.
- **Rollback** para voltar a uma versão anterior.

---
