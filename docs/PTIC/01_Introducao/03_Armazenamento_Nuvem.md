# Armazenamento em Nuvem

> Como a tecnologia Cloud mudou a forma de guardarmos nossos dados e como utilizar o Google Drive e OneDrive no seu dia a dia.

---

## O que exatamente é a "Nuvem"?

Na aula anterior, aprendemos que os arquivos ficam salvos de forma permanente no Armazenamento Local do seu computador (o seu Disco Rígido ou SSD). Mas e se o seu computador quebrar? E se você precisar de um relatório do curso de **AMS Desenvolvimento de Sistemas** pelo seu celular, estando no ônibus?

É aí que entra o **Armazenamento em Nuvem** (Cloud Storage).

Quando você salva um arquivo "na nuvem", ele não está flutuando no céu de verdade. O que acontece é que o seu arquivo está sendo enviado pela internet para ser salvo nos gigantescos discos rígidos de empresas de tecnologia (como o Google ou a Microsoft). Esses computadores de empresas são chamados de **Servidores** e eles ficam ligados 24 horas por dia, 7 dias por semana, em prédios altamente resfriados chamados de Data Centers.

!!! tip "Vantagens da Nuvem para o Desenvolvedor"
    A nuvem protege você da maior dor de cabeça possível: perder seus trabalhos. No meio corporativo e acadêmico da área de tecnologia, as principais vantagens são:
    
    - **Acessibilidade:** Você acessa seus mesmos arquivos em qualquer dispositivo no mundo com internet.
    - **Segurança (Backup Automático):** Os servidores do Google não quebram todos de uma vez. Se o seu PC pifar na véspera da entrega do TCC, seu documento de texto segue salvo intocável.
    - **Colaboração em Tempo Real:** Várias pessoas do seu grupo podem editar a mesma apresentação do PowerPoint ou arquivo do Word ao mesmo tempo, sem criar várias versões do arquivo!

---

## Os Grandes Players do Mercado

No dia a dia escolar e nas corporações, você irá se deparar principalmente com dois gigantes:

### 1. Google Drive (Google Workspace)
- **Vínculo:** Associado automaticamente a quem tem uma conta Google (Gmail). Como você tem o e-mail institucional da Etec (que funciona através de recursos do Google), você terá amplo acesso a ele.
- **Ecossistema:** Ele é a central onde ficam os arquivos criados nos seus Documentos, Planilhas e Apresentações Google.

### 2. OneDrive (Microsoft 365)
- **Vínculo:** Associado a contas da Microsoft (Outlook/Hotmail). É o sistema mais utilizado no mundo corporativo tradicional.
- **Ecossistema:** Ele trabalha perfeitamente em conjunto com as ferramentas do pacote Office (Word, Excel, PowerPoint) e já vem integrado nativamente no Explorador de Arquivos do Windows 10 e 11.

---

## Compartilhamento Estratégico de Arquivos

Uma das maiores revoluções da nuvem não é apenas guardar o arquivo, mas como você o envia para os outros. Antigamente, enviávamos trabalhos anexando um arquivo `.docx` gigantesco por e-mail. Se descobríssemos um erro de digitação nele, tínhamos que mandar _outro_ e-mail!

Com a nuvem, nós enviamos apenas um **Link** de acesso àquele arquivo. O arquivo nunca sai da nuvem.

### Permissões de Compartilhamento

Quando você gera o link de um arquivo pelo Google Drive ou OneDrive, você é o "dono" dele. Você pode decidir que tipo de poder quem recebe o link vai ter sobre o seu documento:

- **Leitor (Reader):** O nível mais seguro. A pessoa pode abrir o link para ver tudo o que está no seu projeto e até baixá-lo (se você permitir), mas não consegue modificar nada no documento original.
- **Comentador (Commenter):** A pessoa pode ver o arquivo e fazer botões com anotações e sugestões na lateral, muito útil quando o professor for corrigir o esboço do seu sistema.
- **Editor (Editor):** Cuidado com este! Quem receber um link de Editor terá o mesmo poder que você. Poderá apagar textos, mudar a cor, inserir imagens e deletar outras áreas inteiras.

!!! tip "Cuidado com o Acesso Restrito"
    Ao compartilhar links, certifique-se da regra de **Acesso Geral**. Por padrão, um link no Drive é criado como **Restrito** (apenas e-mails específicos que você adicionar poderão abrir o link, mesmo que mais gente tenha a URL copiada). Para professores e equipes de trabalho, você normalmente muda isso para **"Qualquer pessoa com o link"** antes de colar o link no chat.

---

## Teste seus conhecimentos

> É muito importante garantir alguns conceitos estruturais da nuvem antes de praticarmos a geração e manipulação destes links!

<quiz>
A nuvem de armazenamento é algo místico e invisível. Quando você salva na nuvem, onde seus arquivos residem tecnicamente no mundo real?
- [x] Eles são salvos em enormes e potentes computadores (Servidores) de grandes empresas que nunca desligam.
- [ ] Eles ficam espalhados aleatoriamente em conexões Wi-Fi na atmosfera.
- [ ] Eles são compactados para ocupar um lugar vazio no seu próprio computador local de maneira invisível.
</quiz>

<quiz>
Você e seu amigo da turma de AMS precisam terminar de escrever a modelagem do Banco de Dados para enviar ao professor à noite. Qual é a forma recomendada, utilizando nuvem, de trabalhar nisso?
- [ ] O primeiro finaliza a parte dele no Word e envia o arquivo oficial completo no WhatsApp do amigo. Ele corrige e reenvia de novo para conferir as partes do primeiro.
- [x] Criar um arquivo no Google Drive e convidar o amigo como "Editor", para que ambos possam escrever as correções no exato mesmo arquivo em tempo real pela internet.
- [ ] Criar o arquivo de forma local e imprimir para escanear a resposta.
</quiz>

<quiz>
Sua equipe acaba de encerrar uma longa construção do site da disciplina de PW1, salvou o documento de texto de instruções no Drive e só falta enviar o resultado o arquivo no chat do time e para o professor. O que acontece se você enviar o link com a configuração padrão "Restrito" para eles e não alterar mais nada?
- [x] Ninguém vai conseguir visualizar o projeto, e todos terão que abrir solicitações de acesso para o seu endereço de e-mail autorizar manualmente.
- [ ] Todos com a URL verão apenas a metade do arquivo até serem registrados.
- [ ] As pessoas ganharão direito de apagar partes indesejadas do arquivo por você não tê-lo configurado como um arquivo de modo "Leitor".
</quiz>

<!-- mkdocs-quiz results -->

---

## Exercício de Fixação

Vamos fixar o conhecimento que construímos usando a nuvem escolar que vocês têm acesso através do Google Workspace!

??? example "Atividade Prática: Organizando a sua Nuvem AMS"
    Você construiu perfeitamente sua organização de pastas locais no computador durante a primeira aula. A missão agora é espelhar (criar a mesma estrutura que você viu em `C:\...\Documentos`) dentro da segurança da Nuvem! Vamos trabalhar a colaboração.
    
    1. Utilize o navegador da sua escolha e acesse seu **Google Drive** com a conta institucional.
    2. Logo na tela inicial ("Meu Drive"), utilize o botão esquerdo "Novo" e crie uma **Nova Pasta**.
    3. Para manter o seu padrão acadêmico da turma, nomeie-a de `Etec_AMS` (sem espaços iguais na aula anterior de local).
    4. Siga e repita este processo para recriar por lá a mesma estrutura daquelas aulas, simulando que seu PC sumir não seria nenhum problema mais:
        - Abra `Etec_AMS`
        - Crie a pasta `1_Semestre`
        - Crie subpastas `PTIC`, `PW1`, `BD1` e `LDOP`
    5. Feito isso, abra a sua pasta recém-gerada de **PTIC** dentro do Drive. Clique novamente no botão "Novo" logo ali e selecione uma das ferramentas interativas da nuvem: **Documento do Google**.
    6. Quando o editor de texto for gerado em sua aba com estilo MS Word, clique no texto padrão do topo (onde avisa "Documento Sem Título") e, de novo, insira um nome sem formatações bruscas: `Atividade_Colaborativa`.
    7. Escreva algo bem resumido dentro da primeira linha do texto, como "Estudando a tecnologia de Nuvem para as disciplinas AMS".
    8. **Agora você vai focar em Compartilhar o Link!**
    9. Vá até o canto superior direito do seu texto no Docs, ou também ali por fora na pasta, onde mora um botão importante escrito "Compartilhar". Clique nele!
    10. Visualize a guia oficial restrita abaixo no menu: troque a caixinha em azul identificada de fato em "Restrito" e selecione no dropdown o nível amplo geral, normalmente "Instituição" ou dependendo do acesso o absoluto **"Qualquer pessoa com o link"**.
    11. Para esta atividade de classe, o objetivo não é deixar os colegas lerem, é testar que a Nuvem muda a mesma página junto! Localize a função onde se apresenta a função de ("Leitor"),  altere-o agora sim para **"Editor"**.
    12. Copie o Link gerado! Entreçado nas suas conversas da turma ou plataforma da disciplina e garanta que o colega comente ou crie frases em seu arquivo pelo link, ambos ao mesmo tempo!

    **Tudo Pronto!** Ao final do processo você praticou e configurou arquivos, permissões na nuvem em nuvem real, o modo infalível de entregar o projeto no último dia do semestre a salvo no Google.
