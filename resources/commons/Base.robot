*** Settings ***
Resource                            Database.robot
Resource                            Mainframe.robot

*** Variable ***
${PF3}  PF(3)

*** Keywords ***

Preparar Suite
   Log To Console  MSG => Abrir conexão com base de dados - Ex.: DB2 <=

Terminar Suite
   Fechar Terminal
