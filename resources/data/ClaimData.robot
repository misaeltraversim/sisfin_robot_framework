*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot

*** Variables ***

*** Keywords ***
Acessar Claim
    [Arguments]          ${CLAIM}   ${x7}   ${y7}
    Digitar Na Posicao   ${CLAIM}   ${x7}   ${y7}
    Transmitir
