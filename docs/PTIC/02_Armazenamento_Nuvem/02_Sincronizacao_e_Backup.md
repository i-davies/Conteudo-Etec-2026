# Sincronizacao e Backup na Nuvem

> Aula basica para entender sincronizacao, simular perda de dados e recuperar arquivos usando lixeira e historico de versoes.

---

## Introducao

Nesta aula, voce vai praticar um cenario comum: perder um arquivo ou alterar um conteudo por engano.

Em seguida, vai recuperar o arquivo usando os recursos da nuvem, sem precisar comecar tudo de novo.

---

## O que vamos aprender

- Entender a diferenca entre sincronizacao e backup.
- Simular perda de dados sem risco real.
- Recuperar arquivo apagado na lixeira.
- Restaurar versoes antigas de um documento.

---

## Conceitos essenciais

- **Sincronizacao:** manter o mesmo arquivo atualizado em mais de um lugar (nuvem e dispositivo).
- **Backup:** copia de seguranca para recuperar arquivos em caso de problema.

### Exemplo rapido

Voce edita um trabalho no laboratorio e salva no Drive. Em casa, abre o mesmo arquivo no celular. Isso e sincronizacao.

Se voce apagar um texto por engano, pode voltar versoes anteriores. Isso funciona como protecao (backup/historico).

---

## Google Drive: simulacao de perda e recuperacao

### A. Criar um documento para teste

1. Abra `https://drive.google.com`.
2. Entre na pasta `Etec_AMS/1_Semestre/PTIC`.
3. Crie um documento chamado `Teste_Recuperacao`.
4. Digite 3 linhas:
   - Linha 1: Meu nome e ...
   - Linha 2: Turma ...
   - Linha 3: Teste de backup na nuvem.
5. Aguarde alguns segundos para o salvamento automatico.

### B. Simular erro de edicao

1. Apague totalmente a Linha 3.
2. Escreva no lugar: "Texto apagado por engano".
3. Espere salvar.

### C. Recuperar usando historico de versoes (Google Docs)

1. No documento, clique em **Arquivo**.
2. Clique em **Historico de versoes**.
3. Clique em **Ver historico de versoes**.
4. Escolha uma versao anterior.
5. Clique em **Restaurar esta versao**.
6. Confirme que a Linha 3 original voltou.

---

## Google Drive: exclusao e restauracao pela lixeira

### A. Apagar arquivo de teste

1. Volte para a lista de arquivos no Drive.
2. Clique com o botao direito em `Teste_Recuperacao`.
3. Clique em **Mover para lixeira**.

### B. Restaurar arquivo da lixeira

1. No menu lateral, clique em **Lixeira**.
2. Encontre `Teste_Recuperacao`.
3. Clique com o botao direito no arquivo.
4. Clique em **Restaurar**.
5. Volte para a pasta `PTIC` e confirme que ele reapareceu.

---

## OneDrive: mesmo processo de recuperacao

1. Abra `https://onedrive.live.com` e entre na conta.
2. Crie um arquivo de teste em `Etec_AMS/1_Semestre/PTIC`.
3. Faça uma alteracao e salve.
4. No menu do arquivo, busque **Historico de versoes** e abra.
5. Restaure uma versao anterior.
6. Apague o arquivo e recupere pela **Lixeira** do OneDrive.

---

## Boas praticas para nao perder arquivos

- Nomeie arquivos com padrao: `Disciplina_Tema_Data`.
- Evite deixar somente no computador local.
- Revise permissoes antes de compartilhar.
- Nao esvazie a lixeira sem necessidade.
- Faça backup de arquivos importantes em mais de um servico quando possivel.

---

## Teste seus conhecimentos

<quiz>
Qual frase define melhor sincronizacao?
- [x] O mesmo arquivo fica atualizado entre nuvem e dispositivos.
- [ ] E o mesmo que apagar arquivos repetidos automaticamente.
- [ ] E salvar o arquivo apenas no pendrive.
</quiz>

<quiz>
Se voce apagou um arquivo no Google Drive por engano, qual local deve abrir primeiro para recuperar?
- [x] Lixeira.
- [ ] Favoritos.
- [ ] Compartilhados comigo.
</quiz>

<quiz>
Para recuperar uma versao antiga de um texto no Google Docs, qual recurso usar?
- [x] Historico de versoes.
- [ ] Corretor ortografico.
- [ ] Modo de leitura.
</quiz>

<!-- mkdocs-quiz results -->

---

## Exercicio de fixacao

??? example "Atividade pratica: Simulando perda e recuperando arquivo"
    1. Crie o arquivo `Teste_Recuperacao` no Google Drive.
    2. Escreva 3 linhas e aguarde salvar.
    3. Altere uma linha e restaure a versao anterior no historico.
    4. Apague o arquivo e restaure pela lixeira.
    5. Registre em 4 linhas o que aprendeu:
       - O que e sincronizacao.
       - O que e backup.
       - Como recuperar versao antiga.
       - Como restaurar arquivo apagado.

    **Resultado esperado:** voce consegue perder (simulacao) e recuperar o arquivo sem entrar em panico.
