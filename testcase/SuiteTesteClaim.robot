*** Settings ***
Resource         ${EXECDIR}/resources/commons/Base.robot
Resource         ${EXECDIR}/resources/service/Claim.robot

Suite Setup     Conectar Emulador 2
Suite Teardown  Terminar Suite


*** Test Cases ***
CT001 - Selecionar Claim
    [Documentation]  Este caso de teste tem como objetivo acessar o claim.
    [Tags]           Fluxo Alternativo
    Informar Claim
