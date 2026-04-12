
## Manual do Formando

## Disciplina: _Linguagens de Scripting e Linha de Comandos_

### Módulo 2: Utilização de linhas de comando:

______________________________________________________________________________


## 1. Introdução ao Módulo:

Um **sistema operativo** é o conjunto de programas fundamentais que permite que um computador funcione. É ele que **gere os recursos da máquina** — como o processador, a memória, o armazenamento e os dispositivos externos — e que **coordena a execução dos programas**, garantindo que tudo ocorre de forma organizada, segura e eficiente. Para além disso, o sistema operativo estabelece a ponte entre o utilizador e o hardware, oferecendo mecanismos que permitem ao utilizador trabalhar com a máquina sem necessitar de conhecer os detalhes físicos do seu funcionamento.

De forma geral, um sistema operativo assegura tarefas essenciais como:

- carregar programas para a memória e controlá-los durante a execução;
- gerir ficheiros e pastas;
- controlar dispositivos (teclado, rato, monitor, impressoras, etc.);
- regular permissões e acessos dos utilizadores;
- disponibilizar ambientes de interação.

Existem **duas formas principais** de o utilizador comunicar com o sistema operativo:

##### **1. Linha de Comandos (CLI – Command Line Interface)**

A interação faz‑se através de **texto**, escrevendo comandos que o sistema interpreta e executa. É uma forma direta e poderosa de utilizar o computador. Permite automatizar tarefas, integrar ferramentas e controlar de forma precisa o comportamento do sistema. Exemplos de ambientes de linha de comandos incluem **Bash** e **PowerShell**.

A linha de comandos é especialmente valorizada por utilizadores técnicos, porque possibilita:

- execução rápida de operações repetitivas;
- criação de scripts;
- acesso a funcionalidades avançadas não disponíveis na interface gráfica;
- controlo detalhado do sistema.

##### **2. Interface Gráfica (GUI – Graphical User Interface)**

A interação é feita através de **elementos visuais**: janelas, ícones, botões e menus. É a forma mais comum para a maioria dos utilizadores, pois facilita tarefas quotidianas como navegar em pastas, configurar definições ou utilizar aplicações. As GUIs tornam o sistema mais acessível, intuitivo e fácil de aprender, mas nem sempre oferecem o mesmo nível de controlo que a linha de comandos.

##### **Duas abordagens complementares**

Ambos os métodos coexistem e **complementam‑se**:

- A **GUI** é ideal para uso diário, pela facilidade e clareza visual.
- A **linha de comandos** é preferida quando se pretende precisão, automação, integração de ferramentas ou realização de tarefas técnicas avançadas.

O utilizador pode escolher a forma de interação que melhor se adequa ao seu objetivo, ao contexto de trabalho e ao seu nível de experiência.

### 1.1 Objetivos do módulo

No final deste módulo, o formando deverá ser capaz de:

- **Compreender o que é um sistema operativo** e o seu papel na gestão dos recursos do computador e na execução de programas.
- **Identificar as duas formas essenciais de interação com o sistema operativo** — **linha de comandos** e **interface gráfica** — reconhecendo que ambas coexistem e se complementam.
- **Perceber o conceito de linha de comandos**, enquanto interface textual que permite comunicar diretamente com o sistema operativo através de instruções precisas.
- **Reconhecer utilidades práticas da linha de comandos**, nomeadamente a automatização de tarefas, a integração de ferramentas e a execução eficiente de operações técnicas.
- **Distinguir diferentes ambientes de linha de comandos**, como Bash e PowerShell, compreendendo que cada um possui a sua sintaxe e conjunto de comandos próprios.
- **Entender o papel do scripting** como extensão natural da linha de comandos, permitindo transformar sequências de ações em procedimentos automatizados e reprodutíveis.

_______________________________________________________

## 2. Linha de comandos:

A linha de comandos constitui uma das formas mais diretas, eficientes e transparentes de interagir com um sistema informático. Ao contrário das interfaces gráficas, que ocultam grande parte dos mecanismos internos, a linha de comandos expõe a estrutura essencial do sistema, permitindo ao utilizador controlar de perto a execução de comandos, a gestão de ficheiros e a configuração da máquina. Esta abordagem é herdeira da tradição Unix, onde a interação textual sempre ocupou um papel central na administração de sistemas e na automatização de tarefas — uma ideia desenvolvida em profundidade nas obras de referência dedicadas ao uso do terminal e do shell.

A linha de comandos funciona através de um **interpretador de comandos**, também chamado _shell_, que lê o que o utilizador escreve, avalia a instrução e executa as ações necessárias. Em Linux, o shell mais comum é o **Bash**, enquanto nos sistemas Windows modernos encontramos a **PowerShell**, que segue princípios semelhantes mas com sintaxe e filosofia próprias. Ambas coexistem no panorama atual, servindo objectivos semelhantes — permitir ao utilizador comunicar diretamente com o sistema — ainda que com bases tecnológicas distintas.

Do ponto de vista conceptual, a linha de comandos pode ser comparada a um “canal direto” de comunicação com o sistema operativo. Cada comando representa uma instrução precisa, frequentemente combinável com outros comandos através de operadores como pipes e redireções. Esta característica modular permite criar sequências poderosas, transformando operações complexas em ações compactas e eficientes.

### 2.1 Principais ambientes de linha de comandos


Existem vários ambientes de linha de comandos, mas destacam‑se dois, pela sua difusão e relevância:

##### **a) Bash (Bourne‑Again Shell)**

Presente por omissão na maioria das distribuições Linux e também disponível em macOS e Windows (através do WSL ou Git Bash), o Bash segue a tradição Unix, com comandos curtos, sintaxe concisa e elevada modularidade. Ferramentas clássicas — como `ls`, `cp`, `grep`, `find`, `chmod` — fazem parte do seu ecossistema. O utilizador interage através de um _prompt_ textual, podendo executar comandos isolados ou escrever scripts que automatizam tarefas complexas. A literatura técnica sobre Bash enfatiza a sua versatilidade e a integração com um vasto conjunto de utilitários do sistema.

##### **b) PowerShell**

Criada pela Microsoft, a PowerShell segue um modelo diferente: em vez de trabalhar apenas com texto, manipula **objetos**, permitindo operações mais ricas e estruturadas sobre dados do sistema. Os comandos — chamados _cmdlets_ — possuem nomes verbosos mas intuitivos, como `Get-Process`, `Set-Item` ou `Copy-Item`. Apesar da diferença filosófica, a PowerShell também permite escrever scripts, automatizar rotinas e integrar serviços externos, tal como o Bash.

Ambas as linhas de comandos permitem administrar sistemas completos, mas cada uma reflete a cultura tecnológica do seu sistema operativo: Unix privilegia simplicidade e composição de pequenas ferramentas; Windows privilegia integração orientada a objetos.

### **2.2 Sintaxes e comandos distintos**

Apesar de partilharem o mesmo propósito geral, Bash e PowerShell utilizam **sintaxes diferentes** e **conjuntos de comandos próprios**.

- Em Bash, a instrução que lista ficheiros é `ls`; em PowerShell é `Get-ChildItem`.
- Para copiar ficheiros, Bash usa `cp`; PowerShell usa `Copy-Item`.
- Para ver processos, Bash usa `ps`; PowerShell usa `Get-Process`.

Alguns comandos têm nomes diferentes mas finalidades equivalentes; outros operam de forma distinta.  Assim, o utilizador deve familiarizar-se com a “gramática” específica de cada ambiente. Esta distinção é essencial para evitar erros e para compreender a forma como cada shell interpreta argumentos, variáveis, caminhos e operadores.

A diversidade de sintaxes não constitui um obstáculo, mas sim uma demonstração da riqueza do ecossistema de scripting. Em contexto profissional, muitos utilizadores utilizam ambos os ambientes, escolhendo o mais adequado ao sistema em causa.

### **2.3. O papel do utilizador na linha de comandos**

A utilização da linha de comandos desenvolve competências valiosas: compreensão da estrutura interna do sistema, capacidade de trabalhar com fluxos de dados e criação de automatismos fiáveis. Em muitos casos, operações que na interface gráfica exigiriam várias ações tornam‑se, na linha de comandos, simples e reprodutíveis.

Ao escrever comandos explicitamente, o utilizador **ganha controlo** e **reduz a ambiguidade**, características fundamentais para administração de sistemas, ciência de dados, análise de logs, gestão de servidores remotos e automatização de tarefas. Não surpreende, portanto, que a literatura especializada recomende o domínio progressivo da linha de comandos como parte essencial da formação técnica de qualquer profissional da área. 

Nos capítulos seguintes, exploraremos de forma mais aprofundada os ambientes mais utilizados: Bash e PowerShell. Cada um será apresentado enquanto sistema próprio, com os seus comandos fundamentais, a sua sintaxe e os seus mecanismos de automação.


_______________________________________________________

## 3. Bash

O Bash — acrónimo de _Bourne‑Again Shell_ — é um dos elementos centrais do universo Unix e, por consequência, de grande parte dos sistemas modernos baseados em Linux. Embora à primeira vista possa parecer apenas uma “janela de texto” onde se escrevem comandos, o Bash representa muito mais do que isso: é simultaneamente um **interpretador de comandos**, uma **linguagem de scripting** e um componente essencial da cultura técnica que moldou a computação desde os anos 70.

A história do Bash está intimamente ligada à evolução dos _shells_ Unix. O shell original, o **Bourne Shell** (sh), criado por Stephen Bourne nos laboratórios Bell, estabeleceu a base da sintaxe que ainda hoje encontramos em sistemas Unix‑like. No entanto, à medida que o mundo Unix crescia, surgiram melhorias e variantes — entre elas o KornShell (ksh) e o C‑Shell (csh).

Nos anos 80, o projeto GNU — uma iniciativa para construir um sistema livre compatível com Unix — deu origem ao Bash, concebido como um substituto livre e mais poderoso do Bourne Shell. O nome “Bourne‑Again” é simultaneamente uma homenagem e um jogo de palavras, sublinhando a continuidade histórica e o espírito de renovação tecnológica.

Com a popularização do Linux nos anos 90 e 2000, o Bash tornou‑se o **shell padrão** da maioria das distribuições, consolidando‑se como ferramenta essencial para administração de sistemas, desenvolvimento e automação de tarefas .

### 3.1 O Bash como linguagem de programação

Embora muitos utilizadores o vejam apenas como um ambiente onde se executam comandos, o Bash é também uma **linguagem de programação completa**, com variáveis, condições, ciclos, funções e mecanismos de controlo de fluxo.

O Bash não pretende substituir linguagens de uso geral como Python, Java ou C++; no entanto, desempenha um papel único: **orquestrar ferramentas existentes**, coordenar processos, manipular ficheiros e automatizar sequências de operações. É uma linguagem orientada à ação — não se foca na criação de programas complexos, mas sim na resolução eficiente de problemas do dia‑a‑dia.

Esta característica aproxima-o das _linguagens de scripting_: linguagens criadas para integrar, automatizar e simplificar o uso de ferramentas já existentes. Por isso, muitos profissionais consideram o Bash complementar, e não concorrente, de linguagens mais tradicionais. Enquanto uma linguagem como Python serve para escrever um programa completo, o Bash serve para **ligar vários programas entre si**, criando fluxos de trabalho rápidos e reprodutíveis.

### 3.2 A relação do Bash com o macOS

Durante muitos anos, o macOS — construído sobre uma base Unix (Darwin/BSD) — utilizou o Bash como shell padrão. Isto fez com que milhões de utilizadores de Mac tivessem acesso ao mesmo ecossistema de comandos, sintaxe e filosofia presente no Linux.

Mais recentemente, a Apple passou a utilizar o **Zsh** como shell por omissão, mas o Bash continua plenamente disponível. A razão desta mudança não é técnica, mas sim **legal e de licenciamento**: versões recentes do Bash utilizam licenças que a Apple evitou integrar por defeito. Ainda assim, do ponto de vista funcional, o macOS mantém compatibilidade e integrações profundas com o universo Unix.

Assim, quem aprende Bash está automaticamente a aprender uma parte essencial do funcionamento interno do macOS, incluindo a forma como o sistema organiza ficheiros, executa comandos, gere permissões e manipula processos.

### 3.3 Porquê aprender Bash?

Aprender Bash não significa aprender apenas mais uma ferramenta: significa conhecer a **língua franca** dos sistemas Unix‑like. É uma competência que permanece útil ao longo de décadas, porque assenta em princípios estruturais da computação: processos, ficheiros, permissões, variáveis de ambiente, automatização e integração de utilitários.

Na prática, aprender Bash é aprender a comunicar com o sistema operativo de forma direta, precisa e transparente — algo que a própria literatura especializada realça como parte fundamental do domínio da linha de comandos e da administração de sistemas .

_____________________________________________

## 4. PowerShell

A PowerShell é um ambiente de linha de comandos moderno, criado pela Microsoft, que surgiu como evolução natural das ferramentas de administração tradicionais do Windows. Embora hoje seja amplamente utilizada por administradores de sistemas, engenheiros DevOps e utilizadores avançados, a sua origem está profundamente ligada às limitações históricas da **Command Prompt (CMD)** — a consola clássica herdada dos tempos do MS‑DOS.

Durante décadas, o Windows contou com a **CMD**, um ambiente minimalista, com comandos simples e um modelo de interação muito próximo do antigo MS‑DOS. No entanto, à medida que os sistemas se tornaram mais complexos, tornou‑se evidente que a CMD era insuficiente para tarefas modernas de administração, automação e integração entre serviços.

Para responder a estas necessidades, a Microsoft desenvolveu, nos anos 2000, a **Windows PowerShell**, inicialmente baseada na framework .NET. A PowerShell introduziu uma inovação fundamental: em vez de trabalhar apenas com _texto_, passou a manipular **objetos estruturados**, permitindo operações sofisticadas sobre o sistema com grande expressividade.

Mais recentemente, com a abertura da stack tecnológica da Microsoft, surgiu a **PowerShell Core**, uma versão multiplataforma (Windows, macOS e Linux), baseada em .NET Core, consolidando a PowerShell como uma ferramenta transversal ao ecossistema moderno de sistemas operativos.

Assim, tal como o Bash se tornou a “língua franca” dos sistemas Unix‑like, a PowerShell tornou‑se a linguagem de automação por excelência no universo Windows.

### 4.1 Relação com a CMD

A PowerShell não substitui completamente a CMD — ambas continuam disponíveis no Windows — mas desempenham papéis diferentes:

- **CMD** oferece comandos simples como `dir`, `copy`, `ipconfig`, herdeiros de uma tradição textual muito antiga.
- **PowerShell** apresenta um ambiente avançado, suportando programação estruturada, acesso profundo ao sistema, e integração com APIs modernas do Windows.

Um mesmo comando pode ter equivalentes distintos:

- Em CMD: `dir`
    
- Em PowerShell: `Get-ChildItem`
    
- Em CMD: `copy ficheiro1 ficheiro2`
    
- Em PowerShell: `Copy-Item ficheiro1 ficheiro2`
    

Além disso, a PowerShell consegue **executar comandos da CMD**, garantindo compatibilidade retroativa, enquanto a CMD não consegue interpretar cmdlets da PowerShell.

Em resumo, a PowerShell representa um salto conceptual: passa de simples comandos textuais para uma verdadeira **linguagem de automação orientada a objetos**.


### 4.2 A PowerShell como linguagem de scripting


Tal como o Bash, a PowerShell não é apenas um interpretador: é uma **linguagem de programação completa**, com:

- variáveis,
- condições e ciclos,
- funções e módulos,
- tratamento de erros,
- integração com APIs, serviços e aplicações.

A sua principal característica é o modelo **object‑based**: cada comando (cmdlet) devolve objetos, não strings. Isto permite manipular directamente propriedades, filtrar resultados e encadear operações de forma segura e previsível.

### 4.3 Alguns exemplos ilustrativos

Como o curso vai aprofundar apenas Bash nos módulos seguintes, vale a pena apresentar alguns exemplos conceptuais de comandos PowerShell que demonstram a sua filosofia:


```PowerShell

# Listar ficheiros e diretórios
Get-ChildItem

# Obter informações sobre processos
Get-Process

# Ler conteúdo de um ficheiro
Get-Content ficheiro.txt

# Copiar um elemento
Copy-Item origem.txt destino.txt

# Apagar um elemento com confirmação
Remove-Item ficheiro.txt -Confirm
```

