*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot

*** Variables ***

*** Keywords ***
Acessar o Sistema
    [Arguments]          ${dado}   ${x}   ${y}
    Digitar Na Posicao   ${dado}   ${x}   ${y}
    Transmitir
