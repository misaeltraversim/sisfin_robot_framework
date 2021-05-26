*** Settings ***
Resource         ${EXECDIR}/resources/commons/Base.robot
Resource         ${EXECDIR}/resources/service/LoginTC.robot
Resource         ${EXECDIR}/resources/service/Faculdade.robot

#Suite Setup     Preparar Suite
#Suite Teardown  Terminar Suite


*** Test Cases ***
CT001 - Logar
    [Documentation]  Este caso de teste tem como objetivo validar o login.
    [Tags]           Fluxo Principal
    Open Connection    teague-tammvs1.tamu.edu  port= 992
    Sleep    10
    Logar No Terminal

CT002 - Selecionar Faculdade
    Informar Faculdade
    Informar Nome
    Informar na lista
    Acionar Action
    Acionar Action - B

CT003 - Help
    Help
