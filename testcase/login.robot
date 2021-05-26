*** Settings ***
Resource         ${EXECDIR}/resources/commons/Base.robot
Resource         ${EXECDIR}/testdata/service/LoginTC.robot
Resource         ${EXECDIR}/testdata/service/Faculdade.robot

#Suite Setup     Preparar Suite
#Suite Teardown  Terminar Suite


*** Test Cases ***
CT001 - Logar
    [Documentation]  Este caso de teste tem como objetivo validar o login.
    [Tags]           Fluxo Principal
    Open Connection    teague-tammvs1.tamu.edu  port= 992
    Sleep    8
    Logar No Terminal

CT002 - Selecionar Faculdade
    Informar Faculdade
    Informar Nome
    Informar na lista