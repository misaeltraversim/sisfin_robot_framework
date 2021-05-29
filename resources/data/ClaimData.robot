*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot

*** Variables ***

*** Keywords ***
Acessar Claim
    [Arguments]          ${CLAIM}   ${x7}   ${y7}
    Digitar Na Posicao   ${CLAIM}   ${x7}   ${y7}
    Transmitir

Informar ID
    [Arguments]          ${ID}      ${x8}   ${y8}
    Digitar Na Posicao   ${ID}      ${x8}   ${y8}
    Transmitir
