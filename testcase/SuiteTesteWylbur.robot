*** Settings ***
Resource         ${EXECDIR}/resources/commons/Base.robot
Resource         ${EXECDIR}/resources/service/Wylbur.robot


Suite Setup     Conectar Emulador 4
Suite Teardown  Terminar Suite

*** Test Cases ***

CT001 - Wylbur
    [Documentation]  Este caso de teste tem como objetivo validar o acesso ao Wylbur.
    [Tags]           Fluxo Principal
    InformarWylbur
    InformarUserId
    InformarPasswordId
    VerificarMensagemDaTela
