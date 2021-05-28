*** Settings ***
Resource         ${EXECDIR}/resources/commons/Base.robot
Resource         ${EXECDIR}/resources/service/Sistema.robot
Resource         ${EXECDIR}/resources/service/Faculdade.robot
Resource         ${EXECDIR}/resources/service/Tso.robot


Suite Setup     Conectar Emulador
Suite Teardown  Terminar Suite

*** Test Cases ***
CT001 - Logar1
    [Documentation]  Este caso de teste tem como objetivo validar o acesso ao sistema "phonbook".
    [Tags]           Fluxo Principal
    Informar Sistema

CT002 - Selecionar Faculdade
    [Documentation]  Este caso de teste tem como objetivo validar quando for informado faculdade.
    [Tags]           Fluxo Alternativo
    Informar Faculdade
    Informar Sobrenome
    Informar Sobrenome2
    Informar Action
    Informar Action - B


CT003 - Help
    [Documentation]  Este caso de teste tem como objetivo validar o help.
    [Tags]           Fluxo Alternativo
    Help
