# Projeto POC Caixa Alta

Projeto de testa automatizado da alta plataforma.

ROBOT
*Executar diretorio na pasta
robot -d./logs tests
//(Argumento -d é um comando de output do robot para execução do diretório.  O comando ./logs serve para o robot criar uma estrutura de logs dentro do projeto e guardar todo relatório de teste dentro dessa pasta)

*Executar diretório na pasta e apenas um arquivo dentro dele
robot -d ./logs tests\SuiteTesteTso.robot

*Executar teste de um cenário específico
robot -t "Cenario 1: Acessar Minha Conta" tests
//(Argumento -t é um comando de output do robot que indica a execução de cenário)


Executar variável
robot -v NAVEGADOR:chorme tests

*Combinar comandados

Executar diretorio na pasta, apenas um arquivo dentro dele e um único teste

robot -d ./logs -t "Cenario 1: Acessar Minha Conta" tests

Executar diretorio na pasta, apenas um arquivo dentro dele, um unico teste e uma variável

robot -d ./logs -t "Cenario 1: Acessar Minha Conta" -v NAVEGADOR:chorme tests


C O M A N D O S  GIT

GIT Clone ()

Exemplo
git clone https://gitlab.com/robot18/poccaixaweb.git


GIT

Iniciando um repositório

(Criar uma pasta no terminal mkdir)

Após informar a pasta

git init (Iniciar um repositório)


git status (Ver alterações)

git commit -m "Mensagem" (Adicionar todos arquivos modificados + mensagem de commit)

git diff: Exibe todas as diferenças entre sua cópia local e o índice sincronizado;

git diff –cached: Exibe todas as diferenças entre o índice sincronizado e o último commit;

git diff HEAD: Exibe todas as diferenças entre sua cópia local e o último commit realizado;

git log



*Desfazer

git reset HEAD(Voltar para o contexto onde estou)

git rest

git reset --soft (Pegar as modificações e voltar )

git reset --mixed ()

git reset --hard Nº do commite


Branch (ramo)
//Os repositórios no GitHub funcionam como uma árvore. Quando criamos um repositório, ele automaticamente é iniciado com a branch master, que é equivalente ao tronco da sua árvore, ou seja, é a parte principal do seu projeto. As próximas branches são secundárias e, portanto, ramos da branch master.

*Criando uma nova branch:

git branch <nome-do-branch>
//Este comando criará uma branch localmente. Para enviar a nova branch para o repositório remoto, você precisa usar o seguinte comando:

git push -u <remote> <nome-da-branch>
Para ver as branches:

git branch or git branch --list

*Deletando uma branch:
git branch -d <nome-da-branch>

git remote add origin https://github.com/MuriloCarlos/xxx.git
git branch -M master
git push -u origin master


Git Checkout
//Este é um dos comandos Git mais usados. Para trabalhar em uma branch, primeiro você precisa mudar para ela.

Usamos o git checkout principalmente para alternar de um branch para outro. Também podemos usá-lo para verificar arquivos e commits:

Exemplo:
git checkout develop

git checkout <nome-da-branch>
Há também um comando de atalho que permite criar e trocar para um branch ao mesmo tempo:

git checkout -b <nome-da-branch>

*Git Status
O comando status do Git fornece todas as informações necessárias sobre o branch atual.

git status
Git Add
//Quando criamos, modificamos ou excluímos um arquivo, essas alterações ocorrerão em nosso ambiente local e não serão incluídas no próximo commit (a menos que alteremos as configurações).

Precisamos usar o comando git add para incluir as alterações de um arquivo em nosso próximo commit.

Para adicionar um arquivo:

git add <arquivo>
Para adicionar tudo de uma vez:

git add -A
//O comando git add não altera o repositório e as alterações não são salvas até usarmos o git commit.

Git Commit
//Este comando é como definir um ponto de verificação no processo de desenvolvimento, para o qual você pode voltar mais tarde, se necessário.

git commit -m "mensagem explicando a mudança no código"
Git Push
Após confirmar as alterações, a próxima coisa que você deseja fazer é enviar as alterações para o servidor remoto.

O comando git push envia e salva suas confirmações no repositório remoto.

git push <remote> <nome-do-branch>
No entanto, se seu branch for criado recentemente, você também precisará fazer upload do branch com o seguinte comando:

git push -u origin <nome-do-branch>
Git Pull
O comando git pull é usado para obter atualizações do repositório remoto.

Este comando é uma combinação de git fetch e git merge, o que significa que, quando usamos o git pull, ele recebe as atualizações do repositório remoto git fetch e aplica imediatamente as alterações mais recentes no seu local git merge.

git pull <remote>
Git Revert
//Existem várias maneiras de desfazer nossas alterações local ou remotamente (depende do que precisamos), mas devemos usar esses comandos com cuidado para evitar problemas.

Uma maneira segura de desfazer os commits é usando git revert.

git revert 'número do hash'
O número do hash pode ser conseguido pelo comando:

git log -- oneline
Git Merge
//Quando você conclui o desenvolvimento em sua branch e tudo funciona bem, a etapa final é mesclar as branches, isso é feito com o comando git merge.

git merge <nome-da-branch>
