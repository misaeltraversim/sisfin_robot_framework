*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot

*** Variables ***

*** Keywords ***
Selecionar Faculdade
    [Arguments]          ${dado}   ${x}   ${y}
    Digitar Na Posicao   ${dado}   ${x}   ${y}
    Transmitir
