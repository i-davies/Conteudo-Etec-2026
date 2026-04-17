# Exercício Avaliativo

> Objetivo: criar uma landing page do seu TCC com apoio de IA no Lovable, versionar no GitHub e publicar na Vercel.

---

## Contexto da atividade

Nesta avaliação, cada aluno vai produzir um site com tema real do próprio TCC.

A proposta é simular um fluxo profissional de desenvolvimento em nuvem:

- geração inicial com IA;
- revisão e ajustes manuais;
- versionamento em Git;
- publicação em ambiente real com deploy automático.

---

## Tema obrigatório

O conteúdo do site deve ser do seu projeto de TCC.

Inclua no mínimo:

- nome do projeto;
- problema que o TCC resolve;
- público-alvo;
- funcionalidades principais;
- tecnologias previstas;
- contato da equipe.

---

## Links necessários

- Lovable: <https://lovable.dev>
- GitHub: <https://github.com>
- Vercel: <https://vercel.com>

---

## Passo a passo detalhado

### Planejar o conteúdo do TCC

Antes de abrir a IA, defina em um rascunho:

- título do TCC;
- objetivo principal;
- três funcionalidades do sistema;
- perfil do usuário final;
- identidade visual básica (cores e estilo).

### Gerar o site no Lovable

1. Acesse o Lovable e faça login.
2. Crie um novo projeto.
3. Use um prompt com o tema do seu TCC.
4. Peça layout responsivo (desktop e celular).
5. Solicite as seções obrigatórias da atividade.
6. Gere a primeira versão e revise textos em português.
7. Faça ajustes no prompt até obter uma versão adequada.

### Exportar e organizar os arquivos

1. Exporte/baixe o projeto gerado.
2. Extraia os arquivos para uma pasta com nome curto e sem espaços.
3. Abra a pasta no VS Code.
4. Verifique se o arquivo inicial está correto (`index.html` ou equivalente).
5. Teste localmente no navegador.

### Criar repositório e enviar para GitHub

1. No VS Code, abra a aba Source Control.
2. Clique em Initialize Repository (se necessário).
3. Faça o primeiro commit com mensagem clara.
4. Clique em Publish to GitHub.
5. Confirme se o repositório foi criado.
6. Copie o link do repositório para usar na entrega.

Exemplos de commits:

- `feat: cria estrutura inicial da landing page do tcc`
- `docs: ajusta textos das secoes do projeto`
- `style: melhora responsividade para mobile`

### Publicar na Vercel

1. Acesse a Vercel com a conta conectada ao GitHub.
2. Clique em Add New... e depois em Project.
3. Importe o repositório do exercício.
4. Confira as configurações detectadas.
5. Clique em Deploy.
6. Aguarde o build e abra a URL pública gerada.
7. Teste o site no celular e no desktop.

### Validar atualização automática

1. Altere um trecho do site no VS Code.
2. Faça novo commit.
3. Envie para o GitHub.
4. Verifique se a Vercel fez novo deploy automaticamente.

---

## Exemplos de prompts para o Lovable

Use os modelos abaixo e substitua pelos dados do seu TCC.

??? example "Prompt 1: estrutura completa da landing page"
    Crie uma landing page moderna e responsiva para o meu TCC chamado "[NOME DO TCC]".
    O projeto resolve o problema "[PROBLEMA]" para o público "[PUBLICO-ALVO]".
    Inclua as seções: Hero, Sobre o Projeto, Problema, Solução, Funcionalidades,
    Tecnologias, Equipe e Contato.
    Use linguagem clara em português do Brasil e um visual profissional.

??? example "Prompt 2: foco em clareza e avaliação"
    Gere um site institucional de apresentação do TCC "[NOME DO TCC]".
    Quero um layout limpo, com boa legibilidade e contraste, totalmente responsivo.
    Inclua botão de chamada para ação e destaque de 3 funcionalidades principais.
    Adicione uma seção com cronograma resumido e outra com resultados esperados.

??? example "Prompt 3: melhoria visual e mobile"
    Refatore a landing page do projeto "[NOME DO TCC]" para melhorar experiência mobile.
    Ajuste tipografia, espaçamentos e organização das seções.
    Mantenha o conteúdo técnico em português e melhore a hierarquia visual.

??? tip "Dica para prompt"
    Quanto mais específico for o contexto do seu TCC, melhor tende a ser a primeira versão gerada.

---

## Critérios de avaliação

- Coerência do conteúdo com o tema do TCC.
- Organização das seções e clareza das informações.
- Qualidade visual e responsividade.
- Versionamento correto no GitHub.
- Publicação funcional na Vercel.
- Evidência de atualização automática após novo commit.

---

## Checklist de verificação antes da entrega

- [ ] O tema do site é o meu TCC.
- [ ] O site tem as seções mínimas exigidas.
- [ ] O layout está responsivo em desktop e celular.
- [ ] O repositório está publicado no GitHub.
- [ ] O histórico possui pelo menos 2 commits.
- [ ] O site está publicado em URL pública da Vercel.
- [ ] Testei a URL da Vercel e ela abre corretamente.
- [ ] Fiz uma atualização e confirmei novo deploy automático.
- [ ] Revisei ortografia e conteúdo antes de enviar.

---

## Entrega

Enviar no formato solicitado pelo professor:

1. Nome do TCC.
2. Nome do projeto/site.
3. Link do repositório no GitHub.
4. Link do site publicado na Vercel.
