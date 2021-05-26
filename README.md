# Testealta

Projeto de testa automatizado da alta plataforma.

ROBOT
Executar diretorio na pasta
robot -d./testcase/logs testcase

Executar diretorio e apenas um arquivo dentro dele

robot tests\TestesNoSite.robot

Executar diretorio na pasta e apenas um arquivo dentro dele
robot -d ./logs tests\TestesNoSite.robot

Executar um unico teste
robot -t "Cenario 1: Acessar Minha Conta" tests

Executar variavel
robot -v NAVEGADOR:chorme tests

Combinar comandados

Executar diretorio na pasta, apenas um arquivo dentro dele e um unico teste

robot -d ./logs -t "Cenario 1: Acessar Minha Conta" tests

Executar diretorio na pasta, apenas um arquivo dentro dele, um unico teste e uma variavél

robot -d ./logs -t "Cenario 1: Acessar Minha Conta" -v NAVEGADOR:chorme tests
