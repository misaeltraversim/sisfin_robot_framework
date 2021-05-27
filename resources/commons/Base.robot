*** Settings ***
Resource                            Database.robot
Resource                            Mainframe.robot

*** Variable ***
${PF3}                  PF(3)


*** Keywords ***
Conectar Emulador
    Open Connection     teague-tammvs1.tamu.edu  port= 992
    Sleep    10

Preparar Suite
   Log To Console       MSG => Abrir conexão com base de dados - Ex.: DB2 <=

Terminar Suite
   Fechar Terminal
