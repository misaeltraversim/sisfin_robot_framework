*** Settings ***
Resource         ${EXECDIR}/resources/commons/Base.robot
Resource         ${EXECDIR}/resources/service/Wylbur.robot


<<<<<<< HEAD
Suite Setup     Conectar Emulador 4
=======
Suite Setup     Conectar Emulador 2
>>>>>>> 2e3a278c7894a9805dda2d07cb05ba2010bbdcc3
Suite Teardown  Terminar Suite

*** Test Cases ***

CT001 - Wylbur
    [Documentation]  Este caso de teste tem como objetivo validar o acesso ao Wylbur.
    [Tags]           Fluxo Principal
    InformarWylbur
    InformarUserId
    InformarPasswordId
<<<<<<< HEAD
    VerificarMensagemDaTela
=======
>>>>>>> 2e3a278c7894a9805dda2d07cb05ba2010bbdcc3
