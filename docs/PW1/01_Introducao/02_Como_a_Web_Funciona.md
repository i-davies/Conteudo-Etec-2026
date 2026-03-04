# Como a Web Funciona?

Chegou a hora de entender o que acontece nos bastidores quando você digita um endereço no navegador e aperta "Enter". Tudo parece mágica, mas por trás da tela existe um caminho muito bem definido.

## O Caminho de um Site

Para um site chegar até o seu computador, alguns conceitos essenciais entram em ação:

### Clientes e Servidores

- **Cliente:** É o seu computador ou celular, utilizando um navegador (como Chrome, Edge ou Firefox) para solicitar uma página.
- **Servidor:** É um computador superpotente, conectado à internet o tempo todo, que guarda os arquivos do site (textos, imagens, códigos) e os entrega quando alguém pede.

### HTTP e DNS

- **HTTP (Hypertext Transfer Protocol):** É a linguagem (ou protocolo) usada para o Cliente e a Web conversarem. O Cliente faz um pedido (Request) e o Servidor devolve uma resposta (Response).
- **DNS (Domain Name System):** Computadores usam números (Endereços IP) para se acharem na rede. Como é difícil decorar números, o DNS funciona como uma lista telefônica: ele traduz o nome do site (como exemplo.com) para o número de IP correspondente.

??? tip "Analogia O Restaurante"
    Pense na Web como um grande restaurante:
    
    - O **Cliente** é você sentado na mesa, escolhendo o seu pedido no cardápio.
    - O **HTTP** é o garçom, que leva o seu pedido até a cozinha e traz o prato de volta.
    - O **Servidor** é a cozinha, que prepara e entrega o que foi pedido.
    - O **DNS** é a recepcionista do restaurante, que te diz exatamente onde fica a sua mesa (o IP).

---

## Prática Guiada O Fluxo de Navegação

Acompanhe a demonstração do professor, que mostrará exatamente o ciclo de vida de uma requisição web na prática.

- Vamos abrir o navegador juntos.
- Acessaremos uma página e usaremos as ferramentas de desenvolvedor para visualizar a aba de Rede (Network).
- Analisaremos de forma visual e simples como as informações (códigos HTML, imagens, estilos visuais) chegam em pacotes até o navegador e desenham a tela final.

---

## Teste seus conhecimentos

> Vamos revisar e fixar os conceitos discutidos sobre a navegação na Web!

<quiz>
No contexto da internet, o que é o "Cliente" e o que é o "Servidor"?
- [ ] O Servidor é quem envia o pedido, e o Cliente é supercomputador que armazena todos os arquivos da web.
- [ ] Ambos são programas de celular. O Cliente é o WhatsApp e o Servidor é o Google Chrome.
- [x] O Cliente é o seu computador (ou celular) com o navegador, e o Servidor é o supercomputador conectado à internet que possui os arquivos e entrega quando você pede.
</quiz>

<quiz>
Para que serve o DNS (Domain Name System)?
- [x] O DNS funciona como uma lista telefônica, traduzindo o nome de um site para localizar o endereço (número de IP) correspondente.
- [ ] O DNS é um protocolo usado unicamente para transmitir vídeos e músicas sem pausar o tempo todo.
- [ ] O DNS diz ao Servidor de qual computador físico a solicitação de envio saiu a fim de bloquear ameaças.
</quiz>

<!-- mkdocs-quiz results -->

---

## Exercícios de Fixação

Chegou o momento de colocar a mão na massa e confirmar o que aprendemos estruturando o caminho e infraestrutura que compõem a Web.

??? example "Desafio Desenhando a Web"
    Para este exercício, você deve criar um mapa visual que explique o caminho da informação, desde o momento em que um usuário digita o endereço do site até a página ser exibida por completo.
    
    **Passo a passo da atividade:**
    
    - Utilize uma folha de papel ou uma ferramenta de desenho simples no computador (como o Paint ou Excalidraw).
    - Desenhe os três componentes principais: **Usuário ou Navegador**, **Servidor DNS** e **Servidor Web**.
    - Faça setas indicando o fluxo da informação:
        - A pergunta inicial do navegador para o DNS.
        - A resposta do DNS contendo o Endereço IP.
        - O pedido via HTTP para o servidor web correto.
        - A entrega final dos arquivos base (HTML, CSS e JS) do servidor para o computador do usuário.
    - Adicione uma breve anotação em cada etapa que desenhou, usando suas próprias palavras para explicar o que está acontecendo ali naquele ponto.

    Ao finalizar, reúna-se com um colega e expliquem seus mapas um para o outro verificando se ambos passaram por todas as etapas corretamente!
