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


<<<<<<< HEAD
#Foi criado o conectar 3 para execuções das suites após fechar o emulador para iniciar novas suites de testes.
Conectar Emulador 3
       Sleep   8
        Open Connection     teague-tammvs1.tamu.edu  port= 992
        Sleep  8

Conectar Emulador 4
      Sleep    8
       Open Connection      teague-tammvs1.tamu.edu  port= 992
       Sleep    8

reparar Suite
=======
Preparar Suite
>>>>>>> 2e3a278c7894a9805dda2d07cb05ba2010bbdcc3
   Log To Console       MSG => Abrir conexão com base de dados - Ex.: DB2 <=

Terminar Suite
   Fechar Terminal
