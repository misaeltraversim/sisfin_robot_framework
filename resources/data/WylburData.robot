*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot

*** Variables ***


*** Keywords ***
Acessar o Wylbur
    [Arguments]          ${wylbur}   ${x7}   ${y7}
    Digitar Na Posicao   ${wylbur}   ${x7}   ${y7}
    Transmitir

Informar o userIdWy
    [Arguments]          ${userIdWy}   ${x8}   ${y8}
    Digitar Na Posicao   ${userIdWy}   ${x8}   ${y8}
    Transmitir

Informar o passwordWy
    [Arguments]          ${passwordWy}   ${x8}   ${y8}
    Digitar Na Posicao   ${passwordWy}   ${x8}   ${y8}
    Transmitir
