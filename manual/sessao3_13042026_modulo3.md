
## Manual do Formando

## Disciplina: _Linguagens de Scripting e Linha de Comandos_

### Módulo 3: Comandos básicos em bash - Apêndice sobre GIT
___________________________________

## 1. Enquadramento geral: GIT

O Git é um sistema de gestão de versões (_version control system_), criado para resolver um problema essencial no desenvolvimento de software: permitir que várias pessoas trabalhem sobre o mesmo conjunto de ficheiros, ao mesmo tempo, sem perder histórico, sem sobrescrever alterações e garantindo sempre a integridade do projeto. Ao contrário de métodos antigos, como guardar ficheiros com nomes diferentes (“versão-final-2-boa-mesmo-agora.zip”), o Git oferece um mecanismo preciso e fiável para acompanhar a evolução do código ao longo do tempo, registando cada alteração de forma estruturada.

Um dos seus aspetos mais importantes é o facto de ser um sistema **distribuído**. Isto significa que cada cópia de um repositório Git é, por si só, um repositório completo, com todo o histórico. Cada programador tem consigo uma espécie de "linha do tempo" do projeto inteira, podendo experimentar, alterar, testar e voltar atrás sem depender de um servidor central. Essa independência dá ao Git uma robustez e flexibilidade que se tornaram padrão de facto na indústria.

Contudo, o Git não é apenas uma ferramenta técnica: é também uma forma de pensar o desenvolvimento. Obriga à disciplina de registar alterações, escrever mensagens descritivas, organizar contributos e compreender que cada alteração faz parte de um processo evolutivo mais largo. O Git introduz uma metodologia implícita que acaba por melhorar a qualidade dos projetos e promover transparência e colaboração.

___________________________________________

## 2. Git e plataformas de alojamento: GitHub, GitLab e afins

Embora o Git funcione perfeitamente sem Internet — basta um diretório local para começar — o seu verdadeiro potencial manifesta‑se quando é usado em conjunto com plataformas de alojamento de código, como o **GitHub**, o **GitLab**, o **Bitbucket** ou outras soluções similares.

Estas plataformas acrescentam funcionalidades avançadas:

- **armazenamento remoto** do repositório (o _remote_),
- **colaboração entre equipas**,
- **sistemas de revisão de código** (_pull requests_ ou _merge requests_),
- **gestão de permissões e equipas**,
- **integração contínua e entrega contínua** (CI/CD),
- **sistemas de acompanhamento de tarefas**.

O GitHub, hoje a plataforma mais popular, funciona como um ponto de encontro entre programadores e comunidades de software. A relação entre o Git e o GitHub pode ser entendida da seguinte forma:

**Git é a ferramenta. GitHub é o repositório remoto onde partilhamos o que fazemos com essa ferramenta.**

O repositório remoto serve, então, como “local de encontro” onde todos os membros de uma equipa sincronizam alterações e contribuem para o mesmo projeto. O funcionamento continua, no entanto, baseado nos princípios fundamentais do Git — commits, branches, merges — sendo o GitHub apenas a camada que facilita a colaboração e acrescenta funcionalidades visuais e sociais.

____________________

## 3. Lógica de trabalho com GIT

O Git assenta numa sequência simples e repetível, independentemente da plataforma:

1. **Clonar** o repositório remoto para a máquina local.
2. **Criar um branch** novo para trabalhar numa tarefa específica.
3. **Adicionar alterações** e registar _commits_, cada um descrevendo uma etapa.
4. **Enviar o branch para o repositório remoto**.
5. **Pedir a integração** das alterações (pull/merge request).
6. **Fundir (merge)** o branch na `main` após revisão.
7. **Eliminar** branches antigos para manter o repositório limpo.

Tudo isto acontece sem nunca perder o histórico e com a possibilidade de regressar a qualquer ponto anterior. O Git funciona como uma verdadeira máquina do tempo para o código — uma que permite avançar, recuar e criar linhas paralelas de evolução sem risco de perder trabalho.

_____________________________

## 4. Boas práticas na escrita de mensagens de commit

Os commits são um elemento central no trabalho com Git. Após realizarmos alterações ao código, temos de as submeter, e isso implica necessariamente realizar um **commit**.

Cada _commit_ representa um **marco na evolução do projeto**. Para além das alterações ao código, o Git regista também uma **mensagem associada ao commit**, que desempenha um papel fundamental na compreensão do histórico do repositório.

Uma boa mensagem de commit permite que qualquer pessoa — incluindo o próprio autor, no futuro — perceba rapidamente **o que foi alterado e porquê**, sem necessidade de analisar o código em detalhe.

#### **Porque são importantes as mensagens de commit**

As mensagens de commit são importantes porque:

- documentam a evolução do projeto;
- facilitam a revisão de código;
- permitem identificar rapidamente quando e onde uma alteração foi introduzida;
- tornam o histórico do repositório legível e útil;
- ajudam a resolver problemas e regressões.

Um histórico com mensagens claras é um sinal de **profissionalismo e cuidado técnico**.

#### **Características de uma boa mensagem de commit**

Uma boa mensagem de commit deve ser:

- **Clara** — descrever objetivamente a alteração realizada;
- **Concisa** — direta, sem informação irrelevante;
- **Específica** — indicar exatamente o que mudou;
- **Orientada à ação** — focada na alteração introduzida.

Sempre que possível, a mensagem deve responder à pergunta:

> _O que faz esta alteração?_

#### **Exemplos de boas mensagens**

- `Corrige validação de inputs no formulário de login`
- `Adiciona script Bash para processamento de logs`
- `Remove ficheiros temporários desnecessários`
- `Atualiza documentação sobre configuração do ambiente`

#### **Exemplos de más mensagens**

- `Update`
- `Fix`
- `Alterações`
- `Agora funciona`
- `Teste`

Mensagens genéricas tornam o histórico pouco informativo e dificultam o trabalho colaborativo.

#### **Boas práticas gerais**

- Fazer _commits_ pequenos e frequentes, cada um representando uma alteração coerente;
- Evitar agrupar múltiplas alterações não relacionadas no mesmo commit;
- Escrever mensagens que façam sentido para outros membros da equipa;
- Pensar no commit como uma unidade lógica de trabalho.

________________________________

## 4. Gestão de branches: organizar o desenvolvimento

Um dos conceitos centrais do Git é o de **branch**, uma espécie de **linha paralela de desenvolvimento**. Cada branch permite trabalhar de forma isolada sobre uma funcionalidade, correção ou preparação de versão, sem afetar diretamente o estado estável do projeto. Assim,  podemos trabalhar sem interferir com o trabalho principal da equipa. O branch é uma metáfora útil: representa um ramo que cresce a partir do tronco principal do projeto.

A utilização de branches não é apenas uma funcionalidade técnica do Git, mas sim um **mecanismo de organização do trabalho**, particularmente importante em contextos colaborativos.

##### **A branch principal: main**

A branch **main** representa o estado **estável e oficial** do projeto. É a versão do código que, em princípio, se encontra pronta para uso, distribuição ou produção.

Características da `main`:

- contém código estável e validado;
- deve estar sempre funcional;
- não deve receber trabalho experimental ou incompleto;
- serve como referência para todo o projeto.

Alterações diretas na `main` devem ser excecionais e cuidadosamente controladas.

##### **Branch de desenvolvimento: develop**

Em projetos com maior complexidade, é comum existir uma branch intermédia chamada **develop**.

A branch `develop`:

- representa a **linha de desenvolvimento contínuo**;
- agrega funcionalidades já concluídas, mas ainda não estabilizadas;
- serve de base para a criação de novas branches de funcionalidade.

Enquanto a `main` reflete o estado estável, a `develop` reflete o estado mais recente do desenvolvimento.

##### **Branches de desenvolvimento: feature branches**

As **feature branches** são utilizadas para desenvolver **novas funcionalidades**, melhorias ou tarefas específicas. Quando queremos implementar algo novo — uma funcionalidade, uma correção, uma melhoria — criamos uma **feature branch**. Esta abordagem permite que cada alteração seja desenvolvida de forma isolada, sem afetar o funcionamento do projeto nem interferir com o trabalho dos outros.

Um fluxo típico é este:

1. O programador cria uma _feature branch_ a partir da `main`  
    (por exemplo, `feature/login` ou `feature/api-v2`).
    
2. Trabalha dentro dessa branch, fazendo _commits_ sucessivos à medida que progride.
    
3. Quando o trabalho está pronto, submete um pedido de integração  
    (_pull request_ no GitHub, _merge request_ no GitLab).
    
4. Outros membros da equipa analisam as alterações, comentam, sugerem correcções.
    
5. Se estiver tudo aprovado, a branch é integrada na `main`.
    

Características das feature branches:

- seguem normalmente a convenção `feature/nome-da-funcionalidade`;
- são criadas a partir da branch `develop`;
- permitem trabalhar de forma isolada sobre uma tarefa concreta;
- são fundidas de volta para `develop` quando a funcionalidade está concluída.

Este modelo reduz conflitos, facilita revisões de código e torna o histórico do projeto mais claro e compreensível.

##### **Release branches**

As **release branches** são utilizadas quando se inicia a fase de **preparação de uma nova versão estável** do software.

A branch `release`:

- é criada a partir de `develop`;
- serve para testes finais, correções menores e ajustes de versão;
- não deve incluir novas funcionalidades;
- após estabilização, é fundida na `main` e na `develop`.

Este mecanismo permite separar claramente o desenvolvimento contínuo da fase de estabilização.

##### **Visão geral: Git Flow**

O modelo descrito — conhecido como **Git Flow** — define um conjunto coerente de práticas para organizar o desenvolvimento em projetos com múltiplas pessoas e versões.

Em síntese:

- `main` → código estável
- `develop` → desenvolvimento contínuo
- `feature/*` → novas funcionalidades
- `release/*` → preparação de versões

Embora nem todos os projetos necessitem de aplicar integralmente este modelo, compreender o Git Flow ajuda a perceber **como o trabalho é organizado em contextos profissionais reais**, mesmo quando se utiliza uma versão simplificada.


_______________ 

