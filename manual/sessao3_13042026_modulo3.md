
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

## 3. Gestão de branches: organizar o desenvolvimento

Um dos conceitos centrais do Git é o de **branch**, uma espécie de linha paralela de desenvolvimento onde podemos trabalhar sem interferir com o trabalho principal da equipa. O branch é uma metáfora útil: representa um ramo que cresce a partir do tronco principal do projeto.

##### **A branch principal: main**

Tradicionalmente, o ramo principal chamava‑se `master`, mas por motivos de alinhamento terminológico e boas práticas modernas passou a chamar‑se **`main`** na maioria dos projetos.

A `main` representa:

- o estado “oficial” ou “estável” do projeto;
- o código que, em princípio, pode ser lançado para produção;
- o ponto de referência a partir do qual todos os outros branches derivam.

A `main` deve manter‑se limpa, coerente e funcional. Alterações arriscadas, experimentais ou não testadas não devem ser feitas diretamente nela.

##### **Branches de desenvolvimento: feature branches**

Quando queremos implementar algo novo — uma funcionalidade, uma correção, uma melhoria — criamos uma **feature branch**. Esta abordagem permite que cada alteração seja desenvolvida de forma isolada, sem afetar o funcionamento do projeto nem interferir com o trabalho dos outros.

Um fluxo típico é este:

1. O programador cria uma _feature branch_ a partir da `main`  
    (por exemplo, `feature/login` ou `feature/api-v2`).
    
2. Trabalha dentro dessa branch, fazendo _commits_ sucessivos à medida que progride.
    
3. Quando o trabalho está pronto, submete um pedido de integração  
    (_pull request_ no GitHub, _merge request_ no GitLab).
    
4. Outros membros da equipa analisam as alterações, comentam, sugerem correcções.
    
5. Se estiver tudo aprovado, a branch é integrada na `main`.
    

Este modelo — bastante simples na sua essência — evita conflitos desnecessários, facilita revisões de código e mantém o histórico organizado.


##### **Branches de manutenção: bugfix, hotfix e outros**

Para além das feature branches, existem padrões usados por equipas maiores:

- **bugfix** — para corrigir defeitos identificados;
- **hotfix** — para resolver urgências diretamente ligadas à produção;
- **release branches** — para estabilizar versões prestes a ser lançadas.

Embora cada equipa adapte esta estrutura às suas necessidades, o princípio é sempre o mesmo: separar o trabalho em linhas paralelas que depois convergem de forma controlada para o ramo principal.

_______________ 

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