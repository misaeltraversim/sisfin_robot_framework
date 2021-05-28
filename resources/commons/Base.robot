*** Settings ***
Resource                            Database.robot
Resource                            Mainframe.robot

*** Variable ***

*** Keywords ***
Conectar Emulador
    Open Connection     teague-tammvs1.tamu.edu  port= 992
    Sleep    10


#Foi criado o conectar 2 para execuções das suites após fechar o emulador para iniciar novas suites de testes.
Conectar Emulador 2
   Sleep    10
    Open Connection     teague-tammvs1.tamu.edu  port= 992
    Sleep    10


Preparar Suite
   Log To Console       MSG => Abrir conexão com base de dados - Ex.: DB2 <=

Terminar Suite
   Fechar Terminal
