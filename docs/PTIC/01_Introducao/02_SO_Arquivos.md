# Introdução ao Sistema Operacional e Arquivos

> Conhecendo o ambiente de trabalho e organizando seus arquivos e diretórios no computador.

---

## O que é um Sistema Operacional?

O Sistema Operacional (frequentemente chamado de **SO**) é o principal programa do seu computador. Ele funciona como o grande "gerente" da máquina, fazendo a ponte entre os componentes físicos (hardware, como memória, processador e disco) e os aplicativos que você utiliza no dia a dia (software, como o navegador de internet, editores de código e jogos).

Sem o sistema operacional, os programas não saberiam como pedir recursos ao computador para funcionar. Os exemplos mais conhecidos no mercado são:

- **Windows:** É o sistema mais popular em computadores pessoais. Como aluno do Ensino Médio integrado ao curso técnico (AMS), este será o seu principal ambiente de trabalho nas aulas. Seu ponto forte é a interface visual amigável baseada em "janelas".
- **macOS:** O sistema desenvolvido pela Apple para seus computadores (MacBooks e iMacs).
- **Android e iOS:** Sistemas desenhados especificamente para dispositivos móveis, gerenciando recursos cruciais como o toque na tela, a bateria e os sensores (câmera, GPS).

!!! tip "Hardware e o SO"
    O SO também gerencia dois componentes muito importantes do computador:
    - **Armazenamento (HD ou SSD):** É onde seus arquivos e fotos ficam guardados de forma permanente, mesmo quando o computador é desligado.
    - **Memória RAM:** É a memória de "trabalho". Os programas e arquivos ficam na RAM enquanto estão abertos. Se a energia acabar antes de você salvar o seu texto, as informações na RAM são perdidas! O SO cuida de resgatar o arquivo do HD e colocá-lo na RAM quando você abre.

---

## Produtividade no Ambiente Windows

Saber navegar pelo Sistema Operacional de forma rápida é uma habilidade fundamental para desenvolvedores e profissionais de tecnologia. Usar o teclado em vez do mouse sempre que possível economiza muito tempo ao longo de uma aula.

**Atalhos Essenciais para o dia a dia:**  
- `Win + E`: Abre o Explorador de Arquivos (onde suas pastas estão).  
- `Win + D`: Mostra a Área de Trabalho (minimiza tudo que está aberto).  
- `Alt + Tab`: Alterna rapidamente entre os programas ou janelas abertas.  
- `Ctrl + C` e `Ctrl + V`: Copiar e Colar (a base do desenvolvedor ágil!).  
- `Ctrl + Z`: Desfaz a última ação (salva vidas se você apagou um texto ou arquivo sem querer).  
- `F2`: Renomeia o arquivo ou pasta que estiver selecionado.

---

## Arquivos, Pastas e Caminhos (Paths)

Tudo o que você salva, cria ou baixa no seu computador é armazenado na forma de arquivos, mas eles precisam ser organizados dentro de pastas.

- **Arquivos:** São as informações propriamente ditas. Cada arquivo possui um formato específico para que o SO saiba qual programa usar para abri-lo. Esse formato é indicado pela extensão do arquivo (as últimas letras depois do ponto final).
- **Pastas (ou Diretórios):** São contêineres virtuais feitos para guardar e organizar os seus arquivos, e até mesmo outras pastas, permitindo categorizar e separar o seu trabalho.

### Caminho de um Arquivo (Path)
Todo arquivo no computador possui um "endereço" único, que mostra o caminho exato para chegar até ele. Por exemplo:
`C:\Usuarios\Aluno\Documentos\Aula_01.txt`
- `C:\`: É a "raiz" principal, também conhecida como disco local (normalmente o seu HD ou SSD).
- `Usuarios\Aluno\Documentos\`: São as subpastas pelas quais você precisa navegar.
- `Aula_01.txt`: É o seu destino final, o arquivo em si.

### Extensões mais comuns no Desenvolvimento
No AMS, você lidará diariamente com arquivos de texto puro voltados à tecnologia. Cada extensão tem um propósito:

- `.txt` - Texto simples, sem formatação, lido muitas vezes no Bloco de Notas.
- `.md` - Markdown, um formato inovador de texto usado por desenvolvedores para escrever documentações (como esta própria página que você está lendo!).
- `.py`, `.js` - Arquivos de código em linguagens como Python e JavaScript.
- `.html`, `.css` - Arquivos que formam as suas telas e estilizam as páginas web de um site e aplicativo.

---

## A Importância da Hierarquia (Organização Lógica)

Imagine um armário de escritório cheio de papéis espalhados pelo chão. Seria muito difícil encontrar um documento específico de semanas atrás, certo? No computador acontece a mesma coisa quando não temos focado na organização desde a primeira aula!

### Boas Práticas para Nomear Arquivos

Na área de tecnologia, os espaços e caracteres especiais podem causar erros inesperados quando programas tentam ler os seus nomes de arquivo. Para evitar grandes problemas, adote os seguintes padrões desde já:

- **Evite espaços em branco:** Use traços (`-`) ou sublinhados (`_`), uma técnica chamada de _underline_. Em vez de `meu projeto`, use `meu-projeto` ou `meu_projeto`.
- **Sem acentuação ou cedilha:** Em vez de `Apresentação`, reescreva de forma simples: `Apresentacao`.
- **Nomes claros e curtos:** Escreva o que o arquivo faz. Em vez de `trabalho_final_agora_vai_mesmo`, prefira `Trabalho_Final`.
- **Área de Trabalho não é armazém:** Evite deixar arquivos soltos na "Área de Trabalho" (Desktop). Salve sua vida acadêmica na pasta Documentos e apenas crie atalhos se essencial.

---

## Teste seus conhecimentos

> Vamos revisar e fixar os conceitos discutidos acima antes de irmos para a prática no computador!

<quiz>
Qual é a principal função de um Sistema Operacional para o seu computador?
- [ ] Rodar os jogos com o máximo de desempenho possível e sem travamentos.
- [x] Gerenciar a comunicação entre os componentes físicos (Hardware) e os aplicativos (Software).
- [ ] Apenas servir de plataforma para acessar a internet utilizando navegadores.
</quiz>

<quiz>
Você está digitando um trabalho final e, infelizmente, do nada, tem uma queda de energia. Quando você liga o computador novamente, tudo o que não havia sido salvo desapareceu. Onde esse texto não-salvo estava armazenado localmente enquanto o computador estava ligado?
- [ ] No Armazenamento Principal (HD ou SSD).
- [x] Na Memória RAM.
- [ ] Na Nuvem da escola.
</quiz>

<quiz>
Qual é o atalho rápido do teclado fundamental do Windows para abrir rapidamente o Explorador de Arquivos (onde ficam as suas janelas e pastas)?
- [ ] `Alt + Tab`
- [x] `Win + E`
- [ ] `Ctrl + Z`
</quiz>

<quiz>
Para que serve, exatamente, a extensão de um arquivo como .txt ou .html?
- [ ] Para indicar ao computador o dia e a hora que o arquivo foi salvo pela última vez.
- [x] Para que o Sistema Operacional saiba o formato do que tem dentro daquele item e qual programa usar para abri-lo corretamente.
- [ ] Para compactar informações do computador para enviar arquivos gigantescos por e-mail.
</quiz>

<quiz>
Você quer organizar os seus arquivos de AMS. Seguindo as boas práticas do mundo da tecnologia, qual dos nomes de arquivos listados abaixo é a opção MAIS forte e recomendada para salvar seu documento?
- [ ] `Relatório de PTIC.docx`
- [ ] `relatorio de ptic.docx`
- [x] `Relatorio_PTIC.docx`
</quiz>

<!-- mkdocs-quiz results -->

---

## Exercício de Fixação

A prática leva à perfeição. É hora de organizar o seu próprio ambiente de trabalho para garantir que você tenha um fluxo de estudos eficiente nas aulas!

??? example "Atividade Prática: Estruturando o seu ambiente de estudos"
    Nesta atividade, vamos construir uma estrutura de diretórios padronizada para guardar todo o conteúdo e os exercícios desta sua etapa inicial em desenvolvimento. Siga atentamente cada um dos passos, testando atalhos e aplicando as boas práticas de nomenclatura de diretórios.
    
    1. Abra o seu **Explorador de Arquivos** através do teclado! Utilize a combinação `Win + E`.
    2. Navegue até a sua pasta padrão **Documentos**.
    3. Crie uma nova pasta principal chamada `Etec_AMS` (lembre-se: substitua espaços em branco e acentuações!).
    4. Entre nesta nova pasta e crie mais duas subpastas de níveis: uma chamada `1_Semestre` e a outra de `Projetos_Pessoais`.
    5. Feito isso, vamos explorar as subpastas: acesse a pasta recém criada `1_Semestre`.
    6. Aqui dentro será o seu laboratório! Você criará pastas individuais para acomodar os arquivos e projetos criados para as suas demais disciplinas técnicas.  Crie as seguintes pastas baseadas apenas em suas siglas, seguindo o padrão de nomenclatura:
        - `PTIC`
        - `PW1` (Programação Web I)
        - `BD1` (Banco de Dados I)
        - `LDOP` (Lógica de Programação)
    7. Para ver como extensões funcionam na prática, entre na sua pasta focada em `PTIC`.
    8. Com o mouse agora, clique com seu botão direito sobre espaço livre na janela atual, vá no item `Novo` do menu de opções, e por fim gere um **Documento de Texto**. O atalho do Windows para renomear este arquivo se quiser sem soltar o mouse é o `F2`. Defina o nome oficial como `Anotacoes_Aula_01`.
    9. Aperte **Enter** para abrir este arquivo recém-gerado, que usará o **Bloco de Notas**. Assim, no corpo vazio branco digite: "Iniciando minha organização de ambiente Windows para a turma AMS Desenvolvimento de Sistemas".
    10. Encerre o trabalho! Salve toda a sua escrita no disco (tente usar também o atalho `Ctrl + S`, de Save, sem encostar o botão no menu Arquivo/Salvar) e então você pode fechar o arquivo!
    
    > **Verificando a Rota do Arquivo**
    > Navegue no menu do topo do seu Explorador, bem na barra central superior chamada Barra de Endereço, onde normalmente são digitados links de pesquisa, e dê um clique! Você visualizará o verdadeiro roteiro raiz em extenso (o "Path") contendo de onde você partiu até aqui (`C:\...\Documentos\Etec_AMS\1_Semestre\PTIC`). 

    **Parabéns!** Realizando o fluxo acima você formou fundações lógicas estruturais completas em um computador, evitando acidentes tecnológicos causados apenas pela escolha acidental de botar acentuação e permitindo um foco central para o seu semestre!
